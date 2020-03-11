
#[macro_use]
extern crate log;
extern crate vulkano_shaders;
extern crate vulkano;
extern crate vulkano_win;
extern crate time;
extern crate winit;
//extern crate nalgebra;

use vulkano::{
    //buffer::{
    //    //BufferUsage,
    //    //CpuAccessibleBuffer,
    //},
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
    instance,
    instance::{
        debug::{
            DebugCallback,
            MessageSeverity,
            MessageType,
        },
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
        VirtualKeyCode,
        WindowEvent,
    },
};

use std::sync::Arc;
use vulkano::swapchain::{FullscreenExclusive, ColorSpace};
use winit::event::ElementState;
use log::{info, debug, warn, error};

pub mod mesh;
pub mod vertex;

pub use vertex::Vertex;
use vulkano::buffer::TypedBufferAccess;
use std::fmt::Debug;

// will contain VkInstance, VkDevice, VkPipeline(s), VkQueue(s), etc
pub struct Renderer;

// TODO: abstract
// TODO: validation layers
pub fn triangle() {
    info!("available layers: ");
    let mut layers = instance::layers_list().unwrap();
    while let Some(layer) = layers.next() {
        info!("{}", layer.name());
    }

    let required_extensions = vulkano_win::required_extensions();
    let instance = Instance::new(None, &required_extensions, vec![
        "VK_LAYER_LUNARG_standard_validation"
    ]).expect("could not create instance");

    let _debug_callback = DebugCallback::new(&instance, MessageSeverity {
        error: true,
        warning: true,
        information: true,
        verbose: true,
    }, MessageType {
        general: true,
        performance: true,
        validation: true,
    }, |msg| {
        let ty = if msg.ty.validation {
            "validation"
        } else if msg.ty.performance {
            "perf"
        } else if msg.ty.general {
            "general"
        } else { panic!("no impl") };
        error!("{1}{3:?}{0}{2}", ty, msg.layer_prefix, msg.description, msg.severity);
    });

    // TODO: select physical device more carefully
    let physical = PhysicalDevice::enumerate(&instance).next().expect("couldn't find physical device");
    info!("Using physical device ({:?}): {}", physical.ty(), physical.name());

    // create window
    // TODO: user-configurable - force user to handle window/surface creation?
    let event_loop = EventLoop::new();
    let surface = WindowBuilder::new()
        .with_title("asteroid")
        .build_vk_surface(&event_loop, instance.clone())
        .expect("couldn't build window");

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
        let dimensions: [u32; 2] = surface.window().inner_size().into();
        Swapchain::new(
            device.clone(),
            surface.clone(),
            capabilities.min_image_count,
            format,
            dimensions,
            1,
            usage,
            &queue,
            SurfaceTransform::Identity,
            alpha,
            PresentMode::Fifo,
            FullscreenExclusive::Default,
            true,
            ColorSpace::SrgbNonLinear,
        ).expect("couldn't make swapchain")
    };

    let mesh = mesh::Mesh::new_verts(vec![
        Vertex::new_2d(-0.5,  -0.25),
        Vertex::new_2d(0.0,   0.5),
        Vertex::new_2d(0.25, -0.1),
    ]);
    let vertex_buffer = mesh.buffer(device.clone());

    let test_model = mesh::Model::new("assets/nanosuit/nanosuit.obj", queue.clone());
    let vbuffer2 = test_model.buffers(device.clone());

    // create shader modules - automatically calls shaderc via macro, compiles to SPIR-V
    mod vs {
        vulkano_shaders::shader! {
            ty: "vertex",
            src: "#version 450
            layout (location = 0) in vec3 pos;
            layout (location = 1) in vec3 normal;
            layout (location = 2) in vec2 tex_coords;
            layout (location = 3) in vec3 tangent;
            layout (location = 4) in vec3 bitangent;
            void main() {
                gl_Position = vec4(pos.x, pos.y, 0.0, 1.0);
            }"
        }
    }
    mod fs {
        vulkano_shaders::shader! {
            ty: "fragment",
            src: "#version 450
            layout (location = 0) out vec4 f_color;
            void main() {
                f_color = vec4(0.7, 0.7, 0.7, 1.0);
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
        .vertex_input_single_buffer::<vertex::Vertex>()
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
    let mut previous_frame_end = Some(Box::new(sync::now(device.clone())) as Box<dyn GpuFuture>);

    event_loop.run(move |event, _, flow| {
        match event {
            Event::WindowEvent { event: WindowEvent::CloseRequested, .. } => *flow = ControlFlow::Exit,
            Event::WindowEvent { event: WindowEvent::Resized(_), .. } => recreate_swapchain = true,
            Event::WindowEvent { event: WindowEvent::KeyboardInput { input, .. }, .. } => {
                if input.state == ElementState::Pressed && input.virtual_keycode == Some(VirtualKeyCode::Escape) {
                    *flow = ControlFlow::Exit;
                }
            },
            Event::RedrawEventsCleared => {
                previous_frame_end.as_mut().unwrap().cleanup_finished();

                // handle recreation of swapchain and viewport if window resizes
                if recreate_swapchain {
                    let dimensions: [u32; 2] = surface.window().inner_size().into();

                    let (new_swapchain, new_images) = match swapchain.recreate_with_dimensions(dimensions) {
                        Ok(r) => r,
                        Err(SwapchainCreationError::UnsupportedDimensions) => return,
                        Err(e) => panic!("{:?}", e),
                    };

                    swapchain = new_swapchain;
                    framebuffers = window_size_dependent_setup(&new_images, render_pass.clone(), &mut dynamic_state);

                    recreate_swapchain = false;
                }

                // acquire swapchain image
                let (image_num, _b, acquire_future) = match swapchain::acquire_next_image(swapchain.clone(), None) {
                    Ok(r) => r,
                    Err(AcquireError::OutOfDate) => {
                        recreate_swapchain = true;
                        return;
                    },
                    Err(e) => panic!("{:?}", e),
                };

                // create command buffer, record commands
                let clear_values = vec!([0.1, 0.1, 0.1, 1.0].into());
                let command_buffer = AutoCommandBufferBuilder::primary_one_time_submit(device.clone(), queue.family()).expect("couldn't make command buffer")
                    .begin_render_pass(framebuffers[image_num].clone(), false, clear_values).expect("couldn't begin render pass")
                    // TODO: replace with draw_indexed
                    .draw(pipeline.clone(), &dynamic_state, vertex_buffer.clone(), (/* descriptor set: images, sampler, etc */), ()).expect("couldn't draw")
                    .end_render_pass().expect("couldn't end render pass")
                    .build().expect("couldn't build");

                // is this a VkFence?
                let future = previous_frame_end.take().unwrap()
                    .join(acquire_future)
                    .then_execute(queue.clone(), command_buffer).expect("couldn't execute command buffer")
                    .then_swapchain_present(queue.clone(), swapchain.clone(), image_num)
                    .then_signal_fence_and_flush();

                // wait for fence?
                match future {
                    Ok(future) => {
                        future.wait(None).expect("couldn't wait on future");
                        previous_frame_end = Some(Box::new(future));
                    }
                    Err(FlushError::OutOfDate) => {
                        recreate_swapchain = true;
                        previous_frame_end = Some(Box::new(sync::now(device.clone())));
                    }
                    Err(e) => {
                        warn!("{:?}", e);
                        previous_frame_end = Some(Box::new(sync::now(device.clone())));
                    }
                }
            }
            _ => ()
        }
    });
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
