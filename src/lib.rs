
extern crate vulkano_shaders;
extern crate vulkano;
extern crate vulkano_win;
extern crate time;
extern crate winit;

use vulkano::{
    buffer::{
        BufferUsage,
        CpuAccessibleBuffer,
    },
    command_buffer::{
        AutoCommandBufferBuilder,
        DynamicState,
    },
    device::{
        Device,
        DeviceExtensions,
    },
    framebuffer::{
        Framebuffer,
        FramebufferAbstract,
        Subpass,
        RenderPassAbstract,
    },
    image::SwapchainImage,
    instance::{
        Instance,
        PhysicalDevice,
    },
    pipeline::{
        GraphicsPipeline,
        viewport::Viewport,
    },
    swapchain,
    swapchain::{
        AcquireError,
        PresentMode,
        SurfaceTransform,
        Swapchain,
        SwapchainCreationError,
    },
    sync,
    sync::{
        GpuFuture,
        FlushError,
    },
};

use vulkano_win::VkSurfaceBuild;

use winit::{
    EventsLoop,
    WindowBuilder,
    Window,
    Event,
    WindowEvent,
    ElementState,
    VirtualKeyCode,
};

use std::sync::Arc;

// will contain VkInstance, VkDevice, VkPipeline(s), VkQueue(s), etc
pub struct Renderer;

// TODO: abstract
// TODO: validation layers
pub fn triangle() {
    let required_extensions = vulkano_win::required_extensions();
    let instance = Instance::new(None, &required_extensions, None).expect("could not create instance");

    // TODO: select physical device more carefully
    let physical = PhysicalDevice::enumerate(&instance).next().expect("couldn't find physical device");
    println!("Using physical device ({:?}): {}", physical.ty(), physical.name());

    // create window
    // TODO: user-configurable - force user to handle window/surface creation?
    let mut event_loop = EventsLoop::new();
    let surface = WindowBuilder::new()
        .with_title("asteroid")
        .build_vk_surface(&event_loop, instance.clone())
        .expect("couldn't build window");
    let window = surface.window();

    // get queue family - must support graphics and render to surface
    // TODO: make nicer
    let queue_family = physical.queue_families().find(|&q| {
        q.supports_graphics() && surface.is_supported(q).unwrap_or(false)
    }).expect("couldn't get queue families");

    // init device, get queues
    let device_ext = DeviceExtensions {
        khr_swapchain: true, ..DeviceExtensions::none()
    };
    let (device, mut queues) = Device::new(
        physical,
        physical.supported_features(),
        &device_ext,
        [(queue_family, 0.5)].iter().cloned()
    ).expect("couldn't init logical device");
    let queue = queues.next().expect("no queues returned");

    // create swapchain and image views
    // TODO: try and get triple buffering?
    let (mut swapchain, images) = {
        let capabilities = surface.capabilities(physical).expect("couldn't get surface capabilities");
        let usage = capabilities.supported_usage_flags;
        let alpha = capabilities.supported_composite_alpha.iter().next().expect("couldn't get surface alpha");
        let format = capabilities.supported_formats[0].0;
        let dimensions: (u32, u32) = window.get_inner_size().expect("couldn't get window size").into();
        Swapchain::new(
            device.clone(),
            surface.clone(),
            capabilities.min_image_count,
            format,
            [dimensions.0, dimensions.1],
            1,
            usage,
            &queue,
            SurfaceTransform::Identity,
            alpha,
            PresentMode::Fifo,
            true,
            None,
        ).expect("couldn't make swapchain")
    };

    // TODO: move to object loading module
    let vertex_buffer = {
        // macro creates vertex input attribute descriptions
        #[derive(Default, Debug, Clone)]
        struct Vertex { position: [f32; 2] }
        vulkano::impl_vertex!(Vertex, position);

        // allocates a buffer and fills it
        CpuAccessibleBuffer::from_iter(device.clone(), BufferUsage::all(), [
            Vertex { position: [-0.5,  -0.25] },
            Vertex { position: [ 0.0,   0.5 ] },
            Vertex { position: [ 0.25, -0.1 ] },
        ].iter().cloned()).expect("couldn't make buffer")
    };

    // create shader modules - automatically calls shaderc via macro, compiles to SPIR-V
    // TODO: handle shaders better? idk if I want to rely on vulkano_shaders
    mod vs {
        vulkano_shaders::shader! {
            ty: "vertex",
            src: "#version 450
            layout (location = 0) in vec2 position;
            void main() {
                gl_Position = vec4(position, 0.0, 1.0);
            }"
        }
    }
    mod fs {
        vulkano_shaders::shader! {
            ty: "fragment",
            src: "#version 450
            layout (location = 0) out vec4 f_color;
            void main() {
                f_color = vec4(1.0, 0.0, 0.0, 1.0);
            }"
        }
    }

    // VkPipelineShaderStageCreateInfo
    let vs = vs::Shader::load(device.clone()).unwrap();
    let fs = fs::Shader::load(device.clone()).unwrap();

    // TODO: more attachments (alpha, position, etc)
    let render_pass = Arc::new(vulkano::single_pass_renderpass!(
        device.clone(),
        // VkAttachmentDescriptions
        attachments: {
            color: {
                load: Clear,
                store: Store,
                format: swapchain.format(),
                samples: 1,
            }
        },
        pass: {
            color: [color],
            depth_stencil: {}
        }
    ).expect("couldn't make render pass"));

    // vkCreateGraphicsPipelines
    let pipeline = Arc::new(GraphicsPipeline::start()
        .vertex_input_single_buffer()
        .vertex_shader(vs.main_entry_point(), ())
        .triangle_list()
        .viewports_dynamic_scissors_irrelevant(1)
        .fragment_shader(fs.main_entry_point(), ())
        .render_pass(Subpass::from(render_pass.clone(), 0).expect("couldn't build subpass"))
        .build(device.clone())
        .expect("couldn't make pipeline"));

    let mut dynamic_state = DynamicState {
        line_width: None,
        viewports: None,
        scissors: None,
        compare_mask: None,
        write_mask: None,
        reference: None,
    };

    let mut framebuffers = window_size_dependent_setup(&images, render_pass.clone(), &mut dynamic_state);

    let mut recreate_swapchain = false;
    let mut previous_frame_end = Box::new(sync::now(device.clone())) as Box<dyn GpuFuture>;

    // TODO: figure out custom frame limiting?
    loop {
        previous_frame_end.cleanup_finished();

        // handle recreation of swapchain and viewport if window resizes
        if recreate_swapchain {
            let dimensions = if let Some(dimensions) = window.get_inner_size() {
                let dimensions: (u32, u32) = dimensions.to_physical(window.get_hidpi_factor()).into();
                [dimensions.0, dimensions.1]
            } else {
                println!("idk dimensions");
                return;
            };

            let (new_swapchain, new_images) = match swapchain.recreate_with_dimension(dimensions) {
                Ok(r) => r,
                Err(SwapchainCreationError::UnsupportedDimensions) => continue,
                Err(e) => panic!("{:?}", e),
            };

            swapchain = new_swapchain;
            framebuffers = window_size_dependent_setup(&new_images, render_pass.clone(), &mut dynamic_state);

            recreate_swapchain = false;
        }

        // acquire swapchain image
        let (image_num, acquire_future) = match swapchain::acquire_next_image(swapchain.clone(), None) {
            Ok(r) => r,
            Err(AcquireError::OutOfDate) => {
                recreate_swapchain = true;
                continue;
            },
            Err(e) => panic!("{:?}", e),
        };

        // create command buffer, record commands
        let clear_values = vec!([0.0, 0.0, 1.0, 1.0].into());
        let command_buffer = AutoCommandBufferBuilder::primary_one_time_submit(device.clone(), queue.family()).expect("couldn't make command buffer")
            .begin_render_pass(framebuffers[image_num].clone(), false, clear_values).expect("couldn't begin render pass")
            .draw(pipeline.clone(), &dynamic_state, vertex_buffer.clone(), (), ()).expect("couldn't draw")
            .end_render_pass().expect("couldn't end render pass")
            .build().expect("couldn't build");

        // is this a VkFence?
        let future = previous_frame_end.join(acquire_future)
            .then_execute(queue.clone(), command_buffer).expect("couldn't execute command buffer")
            .then_swapchain_present(queue.clone(), swapchain.clone(), image_num)
            .then_signal_fence_and_flush();

        // wait for fence?
        match future {
            Ok(future) => {
                future.wait(None).expect("couldn't wait on future");
                previous_frame_end = Box::new(future);
            }
            Err(FlushError::OutOfDate) => {
                recreate_swapchain = true;
                previous_frame_end = Box::new(sync::now(device.clone()));
            }
            Err(e) => {
                println!("{:?}", e);
                previous_frame_end = Box::new(sync::now(device.clone()));
            }
        }

        // TODO: send these events to the user
        let mut done = false;
        event_loop.poll_events(|event| {
            match event {
                Event::WindowEvent { event: WindowEvent::CloseRequested, .. } => done = true,
                Event::WindowEvent { event: WindowEvent::Resized(_), .. } => recreate_swapchain = true,
                Event::WindowEvent { event: WindowEvent::KeyboardInput { input, .. }, .. } => {
                    if input.state == ElementState::Pressed && input.virtual_keycode == Some(VirtualKeyCode::Escape) {
                        done = true;
                    }
                },
                _ => ()
            }
        });
        if done { break }
    }
}

fn window_size_dependent_setup(
    images: &[Arc<SwapchainImage<Window>>],
    render_pass: Arc<dyn RenderPassAbstract + Send + Sync>,
    dynamic_state: &mut DynamicState
) -> Vec<Arc<dyn FramebufferAbstract + Send + Sync>> {
    let dimensions = images[0].dimensions();

    let viewport = Viewport {
        origin: [0.0, 0.0],
        dimensions: [dimensions[0] as f32, dimensions[1] as f32],
        depth_range: 0.0 .. 1.0,
    };
    dynamic_state.viewports = Some(vec!(viewport));

    images.iter().map(|image| {
        Arc::new(
            Framebuffer::start(render_pass.clone())
                .add(image.clone()).unwrap()
                .build().unwrap()
        ) as Arc<dyn FramebufferAbstract + Send + Sync>
    }).collect::<Vec<_>>()
}

