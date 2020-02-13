
extern crate vulkano_shaders;
extern crate vulkano;
extern crate vulkano_win;
extern crate time;
extern crate winit;

use vulkano::{
    command_buffer::{
        AutoCommandBuffer,
        AutoCommandBufferBuilder,
        DynamicState,
    },
    descriptor::PipelineLayoutAbstract,
    device::{
        Device,
        DeviceExtensions,
        Features,
        Queue,
    },
    format::Format,
    framebuffer::{
        Framebuffer,
        FramebufferAbstract,
        RenderPassAbstract,
        Subpass,
    },
    image::{
        ImageUsage,
        SwapchainImage,
    },
    instance::{
        ApplicationInfo,
        debug::{
            DebugCallback,
            MessageSeverity,
            MessageType,
        },
        Instance,
        InstanceExtensions,
        PhysicalDevice,
        Version,
    },
    pipeline::{
        GraphicsPipeline,
        vertex::{
            BufferlessDefinition,
            BufferlessVertices,
        },
        viewport::Viewport,
    },
    swapchain::{
        AcquireError,
        acquire_next_image,
        CompositeAlpha,
        Capabilities,
        ColorSpace,
        FullscreenExclusive,
        PresentMode,
        SupportedPresentModes,
        Surface,
        Swapchain,
    },
    sync,
    sync::{
        GpuFuture,
        SharingMode,
    },
};

use vulkano_win::VkSurfaceBuild;

use winit::{
    event_loop::{
        EventLoop,
        ControlFlow,
    },
    window::{
        Window,
        WindowBuilder,
    },
    event::{
        Event,
        ElementState,
        VirtualKeyCode,
        WindowEvent,
    },
    dpi::LogicalSize,
};

use std::sync::Arc;
use std::collections::HashSet;

const WIDTH: u32 = 1600;
const HEIGHT: u32 = 900;

struct QueueFamilyIndices {
    graphics_family: i32,
    present_family: i32,
}

impl QueueFamilyIndices {
    fn new() -> Self {
        Self { graphics_family: -1, present_family: -1 }
    }

    fn is_complete(&self) -> bool {
        self.graphics_family >= 0 && self.present_family >= 0
    }
}

type ConcreteGraphicsPipeline = GraphicsPipeline<BufferlessDefinition, Box<dyn PipelineLayoutAbstract + Send + Sync + 'static>, Arc<dyn RenderPassAbstract + Send + Sync + 'static>>;

pub struct Renderer {
    instance: Arc<Instance>,
    _debug_callback: DebugCallback,
    surface: Arc<Surface<Window>>,
    physical_device_idx: usize,
    device: Arc<Device>,
    graphics_queue: Arc<Queue>,
    present_queue: Arc<Queue>,
    swapchain: Arc<Swapchain<Window>>,
    swapchain_images: Vec<Arc<SwapchainImage<Window>>>,
    render_pass: Arc<dyn RenderPassAbstract + Send + Sync>,
    graphics_pipeline: Arc<ConcreteGraphicsPipeline>,
    swapchain_framebuffers: Vec<Arc<dyn FramebufferAbstract + Send + Sync>>,
    command_buffers: Vec<Arc<AutoCommandBuffer>>,
    previous_frame_end: Option<Box<dyn GpuFuture>>,
    recreate_swapchain: bool,
}

impl Renderer {
    pub fn initialize() -> (Self, EventLoop<()>) {
        let instance = Self::create_instance();
        let _debug_callback = Self::setup_debug_callback(&instance);
        let (event_loop, surface) = Self::create_surface(&instance);

        let physical_device_idx = Self::pick_physical_device(&instance, &surface);
        let (device, graphics_queue, present_queue) = Self::create_logical_device(
            &instance,
            &surface,
            physical_device_idx
        );

        let (swapchain, swapchain_images) = Self::create_swapchain(
            &instance,
            &surface,
            physical_device_idx,
            &device,
            &graphics_queue,
            &present_queue,
        );

        let render_pass = Self::create_render_pass(&device, swapchain.format());
        let graphics_pipeline = Self::create_graphics_pipeline(&device, swapchain.dimensions(), &render_pass);

        let swapchain_framebuffers = Self::create_framebuffers(&swapchain_images, &render_pass);

        let previous_frame_end = Some(Self::create_sync_objects(&device));

        let mut r = Self {
            instance,
            _debug_callback,
            surface,
            physical_device_idx,
            device,
            graphics_queue,
            present_queue,
            swapchain,
            swapchain_images,
            render_pass,
            graphics_pipeline,
            swapchain_framebuffers,
            command_buffers: vec![],
            previous_frame_end,
            recreate_swapchain: false,
        };

        r.create_command_buffers();
        (r, event_loop)
    }

    fn create_instance() -> Arc<Instance> {
        if !Self::check_validation_layer_support() {
            println!("no validation layers supported")
        }

        let supported_extensions = InstanceExtensions::supported_by_core()
            .expect("couldn't retrieve supported extensions");
        println!("supported extensions: {:?}", supported_extensions);

        let app_info = ApplicationInfo {
            application_name: Some("asteroid example".into()),
            application_version: Some(Version { major: 1, minor: 0, patch: 0 }),
            engine_name: Some("asteroid".into()),
            engine_version: Some(Version { major: 1, minor: 0, patch: 0 }),
        };

        let required_extensions = Self::get_required_extensions();

        if Self::check_validation_layer_support() {
            Instance::new( Some(&app_info), &required_extensions, vec![
                "VK_LAYER_LUNARG_standard_validation"
            ].iter().cloned()).expect("couldn't create Vulkan instance")
        } else {
            Instance::new(Some(&app_info), &required_extensions, None)
                .expect("couldn't create Vulkan instance")
        }
    }

    fn check_validation_layer_support() -> bool {
        let layers: Vec<_> = vulkano::instance::layers_list().unwrap()
            .map(|l| l.name().to_owned()).collect();
        vec!["VK_LAYER_LUNARG_standard_validation"]
            .iter().all(|layer_name| layers.contains(&layer_name.to_string()))
    }

    fn get_required_extensions() -> InstanceExtensions {
        let mut extensions = vulkano_win::required_extensions();
        extensions.ext_debug_utils = true;
        extensions
    }

    fn setup_debug_callback(instance: &Arc<Instance>) -> DebugCallback {
        DebugCallback::new(&instance, MessageSeverity {
            error: true,
            warning: true,
            information: true,
            verbose: true,
        }, MessageType {
            general: true,
            performance: true,
            validation: true,
        }, |msg| {
            if msg.ty.validation {//&& (msg.severity.warning || msg.severity.error) {
                let sev = if msg.severity.error { "WARNING"
                } else if msg.severity.warning { "ERROR"
                } else if msg.severity.information { "INFO"
                } else { "VERBOSE" };

                let ty = if msg.ty.validation { "VALIDATION"
                } else if msg.ty.general { "GENERAL"
                } else { "PERFORMANCE" };

                println!("[{}][{} ({})]: {}", sev, ty, msg.layer_prefix, msg.description);
            }
        }).expect("couldn't create debug callback")
    }

    fn pick_physical_device(instance: &Arc<Instance>, surface: &Arc<Surface<Window>>) -> usize {
        PhysicalDevice::enumerate(&instance)
            .position(|device| Self::is_device_suitable(surface, &device))
            .expect("couldn't find a suitable GPU")
    }

    fn is_device_suitable(surface: &Arc<Surface<Window>>, device: &PhysicalDevice) -> bool {
        let indices = Self::find_queue_families(surface, device);
        let extensions_supported = Self::check_device_extension_support(device);

        let swapchain_adequate = if extensions_supported {
            let capabilities = surface.capabilities(*device)
                .expect("couldn't get surface capabilities");
            !capabilities.supported_formats.is_empty() &&
                capabilities.present_modes.iter().next().is_some()
        } else {
            false
        };

        indices.is_complete() && extensions_supported && swapchain_adequate
    }

    fn check_device_extension_support(device: &PhysicalDevice) -> bool {
        let available_extensions = DeviceExtensions::supported_by_device(*device);
        let device_extensions = DeviceExtensions {
            khr_swapchain: true,
            ..DeviceExtensions::none()
        };
        available_extensions.intersection(&device_extensions) == device_extensions
    }

    fn choose_swap_surface_format(available_formats: &[(Format, ColorSpace)]) -> (Format, ColorSpace) {
        *available_formats.iter()
            .find(|(format, color_space)|
                *format == Format::B8G8R8A8Unorm && *color_space == ColorSpace::SrgbNonLinear
            )
            .unwrap_or_else(|| &available_formats[0])
    }

    fn choose_swap_present_mode(available_present_modes: SupportedPresentModes) -> PresentMode {
        if available_present_modes.mailbox {
            PresentMode::Mailbox
        } else if available_present_modes.immediate {
            PresentMode::Immediate
        } else {
            PresentMode::Fifo
        }
    }

    fn choose_swap_extent(capabilities: &Capabilities) -> [u32; 2] {
        if let Some(current_extent) = capabilities.current_extent {
            return current_extent
        } else {
            let mut actual_extent = [WIDTH, HEIGHT];
            actual_extent[0] = capabilities.min_image_extent[0]
                .max(capabilities.max_image_extent[0].min(actual_extent[0]));
            actual_extent[1] = capabilities.min_image_extent[1]
                .max(capabilities.max_image_extent[1].min(actual_extent[1]));
            actual_extent
        }
    }

    fn create_swapchain(
        instance: &Arc<Instance>,
        surface: &Arc<Surface<Window>>,
        physical_device_index: usize,
        device: &Arc<Device>,
        graphics_queue: &Arc<Queue>,
        present_queue: &Arc<Queue>,
    ) -> (Arc<Swapchain<Window>>, Vec<Arc<SwapchainImage<Window>>>) {
        let physical_device = PhysicalDevice::from_index(&instance, physical_device_index).unwrap();
        let capabilities = surface.capabilities(physical_device)
            .expect("couldn't get surface capabilities");

        let surface_format = Self::choose_swap_surface_format(&capabilities.supported_formats);
        let present_mode = Self::choose_swap_present_mode(capabilities.present_modes);
        let extent = Self::choose_swap_extent(&capabilities);

        let mut image_count = capabilities.min_image_count + 1;
        if capabilities.max_image_count.is_some() && image_count > capabilities.max_image_count.unwrap() {
            image_count = capabilities.max_image_count.unwrap();
        }

        let image_usage = ImageUsage {
            color_attachment: true,
            .. ImageUsage::none()
        };

        let indices = Self::find_queue_families(&surface, &physical_device);

        let sharing: SharingMode = if indices.graphics_family != indices.present_family {
            vec![graphics_queue, present_queue].as_slice().into()
        } else {
            graphics_queue.into()
        };

        let (swapchain, images) = Swapchain::new(
            device.clone(),
            surface.clone(),
            image_count,
            surface_format.0,
            extent,
            1,
            image_usage,
            sharing,
            capabilities.current_transform,
            CompositeAlpha::Opaque,
            present_mode,
            FullscreenExclusive::Default,
            true,
            ColorSpace::SrgbNonLinear
        ).expect("couldn't create swap chain");

        (swapchain, images)
    }

    fn create_render_pass(device: &Arc<Device>, color_format: Format) -> Arc<dyn RenderPassAbstract + Send + Sync> {
        Arc::new(vulkano::single_pass_renderpass!(device.clone(),
            attachments: {
                color: {
                    load: Clear,
                    store: Store,
                    format: color_format,
                    samples: 1,
                }
            },
            pass: {
                color: [color],
                depth_stencil: {}
            }
        ).unwrap())
    }

    fn create_graphics_pipeline(
        device: &Arc<Device>,
        swapchain_extent: [u32; 2],
        render_pass: &Arc<dyn RenderPassAbstract + Send + Sync>,
    ) -> Arc<ConcreteGraphicsPipeline> {
        mod vertex_shader {
            vulkano_shaders::shader! {
               ty: "vertex",
               path: "shaders/09_shader_base.vert"
            }
        }

        mod fragment_shader {
            vulkano_shaders::shader! {
                ty: "fragment",
                path: "shaders/09_shader_base.frag"
            }
        }

        let vert_shader_module = vertex_shader::Shader::load(device.clone())
            .expect("couldn't create vertex shader module");
        let frag_shader_module = fragment_shader::Shader::load(device.clone())
            .expect("couldn't create fragment shader module");

        let dimensions = [swapchain_extent[0] as f32, swapchain_extent[1] as f32];
        let viewport = Viewport {
            origin: [0.0, 0.0],
            dimensions,
            depth_range: 0.0 .. 1.0,
        };

        Arc::new(GraphicsPipeline::start()
            .vertex_input(BufferlessDefinition {})
            .vertex_shader(vert_shader_module.main_entry_point(), ())
            .triangle_list()
            .primitive_restart(false)
            .viewports(vec![viewport])
            .fragment_shader(frag_shader_module.main_entry_point(), ())
            .depth_clamp(false)
            .polygon_mode_fill()
            .line_width(1.0)
            .cull_mode_back()
            .front_face_clockwise()
            .blend_pass_through()
            .render_pass(Subpass::from(render_pass.clone(), 0).unwrap())
            .build(device.clone())
            .unwrap()
        )
    }

    fn create_framebuffers(
        swapchain_images: &[Arc<SwapchainImage<Window>>],
        render_pass: &Arc<dyn RenderPassAbstract + Send + Sync>
    ) -> Vec<Arc<dyn FramebufferAbstract + Send + Sync>> {
        swapchain_images.iter()
            .map(|image| {
                let fba: Arc<dyn FramebufferAbstract + Send + Sync> = Arc::new(Framebuffer::start(render_pass.clone())
                    .add(image.clone()).unwrap()
                    .build().unwrap());
                fba
            }
            ).collect::<Vec<_>>()
    }

    fn create_command_buffers(&mut self) {
        let queue_family = self.graphics_queue.family();
        self.command_buffers = self.swapchain_framebuffers.iter()
            .map(|framebuffer| {
                let vertices = BufferlessVertices { vertices: 3, instances: 1 };
                Arc::new(AutoCommandBufferBuilder::primary_simultaneous_use(self.device.clone(), queue_family)
                    .unwrap()
                    .begin_render_pass(framebuffer.clone(), false, vec![[0.0, 0.0, 0.0, 1.0].into()])
                    .unwrap()
                    .draw(self.graphics_pipeline.clone(), &DynamicState::none(),
                          vertices, (), ())
                    .unwrap()
                    .end_render_pass()
                    .unwrap()
                    .build()
                    .unwrap())
            })
            .collect();
    }

    fn create_sync_objects(device: &Arc<Device>) -> Box<dyn GpuFuture> {
        Box::new(sync::now(device.clone())) as Box<dyn GpuFuture>
    }

    fn find_queue_families(surface: &Arc<Surface<Window>>, device: &PhysicalDevice) -> QueueFamilyIndices {
        let mut indices = QueueFamilyIndices::new();
        for (i, queue_family) in device.queue_families().enumerate() {
            if queue_family.supports_graphics() {
                indices.graphics_family = i as i32;
            }

            if surface.is_supported(queue_family).unwrap() {
                indices.present_family = i as i32;
            }

            if indices.is_complete() {
                break;
            }
        }

        indices
    }

    fn create_logical_device(
        instance: &Arc<Instance>,
        surface: &Arc<Surface<Window>>,
        physical_device_index: usize,
    ) -> (Arc<Device>, Arc<Queue>, Arc<Queue>) {
        let physical_device = PhysicalDevice::from_index(&instance, physical_device_index).unwrap();
        let indices = Self::find_queue_families(&surface, &physical_device);

        let families = [indices.graphics_family, indices.present_family];
        use std::iter::FromIterator;
        let unique_queue_families: HashSet<&i32> = HashSet::from_iter(families.iter());

        let queue_priority = 1.0;
        let queue_families = unique_queue_families.iter().map(|i| {
            (physical_device.queue_families().nth(**i as usize).unwrap(), queue_priority)
        });

        let (device, mut queues) = Device::new(
            physical_device,
            &Features::none(),
            &DeviceExtensions {
                khr_swapchain: true,
                ..DeviceExtensions::none()
            },
            queue_families
        ).expect("couldn't create logical device");

        let graphics_queue = queues.next().unwrap();
        let present_queue = queues.next().unwrap_or_else(|| graphics_queue.clone());

        (device, graphics_queue, present_queue)
    }

    fn create_surface(instance: &Arc<Instance>) -> (EventLoop<()>, Arc<Surface<Window>>) {
        let events_loop = EventLoop::new();
        let surface = WindowBuilder::new()
            .with_title("Vulkan")
            .with_inner_size(LogicalSize::new(f64::from(WIDTH), f64::from(HEIGHT)))
            .build_vk_surface(&events_loop, instance.clone())
            .expect("couldn't create window surface");
        (events_loop, surface)
    }

    pub fn main_loop(mut self, l: EventLoop<()>) -> ! {
        l.run(move |event, _, flow| {
            self.draw_frame();
            match event {
                Event::WindowEvent { event: WindowEvent::CloseRequested, .. } => *flow = ControlFlow::Exit,
                Event::WindowEvent { event: WindowEvent::Resized(_), .. } => self.recreate_swapchain = true,
                Event::WindowEvent { event: WindowEvent::KeyboardInput { input, .. }, .. } => {
                    if input.state == ElementState::Pressed && input.virtual_keycode == Some(VirtualKeyCode::Escape) {
                        *flow = ControlFlow::Exit;
                    }
                },
                _ => {}
            }
        });
    }

    fn draw_frame(&mut self) {
        self.previous_frame_end.as_mut().unwrap().cleanup_finished();

        if self.recreate_swapchain {
            self.recreate_swapchain();
            self.recreate_swapchain = false;
        }

        let (image_index, _, acquire_future) = match acquire_next_image(self.swapchain.clone(), None) {
            Ok(r) => r,
            Err(AcquireError::OutOfDate) => {
                self.recreate_swapchain = true;
                return;
            },
            Err(err) => panic!("{:?}", err)
        };

        let command_buffer = self.command_buffers[image_index].clone();

        let future = self.previous_frame_end.take().unwrap()
            .join(acquire_future)
            .then_execute(self.graphics_queue.clone(), command_buffer).expect("couldn't execute graphics commands")
            .then_swapchain_present(self.present_queue.clone(), self.swapchain.clone(), image_index)
            .then_signal_fence_and_flush();

        match future {
            Ok(future) => {
                self.previous_frame_end = Some(Box::new(future) as Box<_>);
            }
            Err(vulkano::sync::FlushError::OutOfDate) => {
                self.recreate_swapchain = true;
                self.previous_frame_end
                    = Some(Box::new(sync::now(self.device.clone())) as Box<_>);
            }
            Err(e) => {
                println!("{:?}", e);
                self.previous_frame_end
                    = Some(Box::new(sync::now(self.device.clone())) as Box<_>);
            }
        }
    }

    fn recreate_swapchain(&mut self) {
        let (swapchain, images) = Self::create_swapchain(
            &self.instance,
            &self.surface,
            self.physical_device_idx,
            &self.device,
            &self.graphics_queue,
            &self.present_queue,
        );
        self.swapchain = swapchain;
        self.swapchain_images = images;

        self.render_pass = Self::create_render_pass(
            &self.device,
            self.swapchain.format()
        );
        self.graphics_pipeline = Self::create_graphics_pipeline(
            &self.device,
            self.swapchain.dimensions(),
            &self.render_pass
        );
        self.swapchain_framebuffers = Self::create_framebuffers(&self.swapchain_images, &self.render_pass);
        self.create_command_buffers();
    }
}

