
#[macro_use]
extern crate glium;
extern crate nccl;
extern crate time;

pub mod error;
pub mod settings;
pub mod game;
pub mod graphics;

use error::*;
use game::*;
use settings::Settings;

pub fn game_loop<T: GameState>(mut state: T, settings_file: &str) -> AsteroidResult {
    let settings = settings::open(settings_file).unwrap();

    use glium::{glutin, Surface};
    let mut events = glutin::EventsLoop::new();
    let window = glutin::WindowBuilder::new()
        .with_title(settings.title)
        .with_dimensions(settings.width, settings.height);
    let context = glutin::ContextBuilder::new();
    let display = glium::Display::new(window, context, &events).unwrap();

    // TODO: move to mod graphics
    #[derive(Copy, Clone)]
    struct Vertex {
        position: [f32; 2],
    }
    implement_vertex!(Vertex, position);
    let v1 = Vertex { position: [-0.5, -0.5] };
    let v2 = Vertex { position: [0., 0.5] };
    let v3 = Vertex { position: [0.5, -0.25] };
    let shape = vec![v1, v2, v3];
    let vertex_buffer = glium::VertexBuffer::new(&display, &shape).unwrap();
    let indices = glium::index::NoIndices(glium::index::PrimitiveType::TrianglesList);

    // TODO: move to settings file - path of shaders
    let vertex_shader_src = r#"
        #version 140
        in vec2 position;
        out vec2 my_attr;      // our new attribute
        uniform mat4 matrix;
        void main() {
            my_attr = position;     // we need to set the value of each `out` variable.
            gl_Position = matrix * vec4(position, 0.0, 1.0);
        }
    "#;
    let fragment_shader_src = r#"
        #version 140
        in vec2 my_attr;
        out vec4 color;
        void main() {
            color = vec4(my_attr, 0.0, 1.0);   // we build a vec4 from a vec2 and two floats
        }
    "#;
    let program = glium::Program::from_source(&display, vertex_shader_src, fragment_shader_src, None).unwrap();

    let mut t: f32 = -0.5;
    let mut err = None;
    while err.is_none() {
        t += 0.0002;
        if t > 0.5 {
            t = -0.5;
        }

        let mut target = display.draw();

        // TODO: move to struct Graphics
        target.clear_color(0., 0., 1., 1.);
        let uniforms = uniform! {
            matrix: [
                [t.cos(), t.sin(), 0.0, 0.0],
                [-t.sin(), t.cos(), 0.0, 0.0],
                [0.0, 0.0, 1.0, 0.0],
                [t,   0.0, 0.0, 1.0f32],
            ]
        };
        target.draw(&vertex_buffer, &indices, &program, &uniforms, &Default::default()).unwrap();

        target.finish().unwrap();

        events.poll_events(|event| {
            match event {
                glutin::Event::WindowEvent { event, .. } => match event {
                    glutin::WindowEvent::Closed => err = Some(AsteroidResult::Ok),
                    glutin::WindowEvent::KeyboardInput { input, .. } => {
                        if input.virtual_keycode.unwrap() == glutin::VirtualKeyCode::Escape {
                            err = Some(AsteroidResult::Ok);
                        }
                    }
                    _ => ()
                },
                _ => (),
            }
        });
    }

    err.unwrap()
    //let mut event_loop = glutin::EventsLoop::new();
    //let window = glutin::WindowBuilder::new()
    //    .with_title(settings.title)
    //    .with_dimensions(settings.dimensions.0, settings.dimensions.1);
    //let context = glutin::ContextBuilder::new()
    //    .with_vsync(settings.vsync);
    //let window = glutin::GlWindow::new(window, context, &event_loop).unwrap();

    //unsafe {
    //    window.make_current().unwrap();
    //    gl::load_with(|symbol| window.get_proc_address(symbol) as *const _);
    //    gl::ClearColor(0., 1., 0., 1.);
    //}

    //let mut graphics = Graphics::new();

    //let mut last_iter = time::precise_time_ns();
    //let mut err = None;
    //while err.is_none() {
    //    event_loop.poll_events(|event| {
    //        last_iter = time::precise_time_ns();

    //        match event {
    //            glutin::Event::WindowEvent { event, .. } => match event {
    //                glutin::WindowEvent::Closed => {
    //                    err = Some(AsteroidResult::Ok);
    //                },
    //                glutin::WindowEvent::Resized(w, h) => window.resize(w, h),
    //                _ => {}
    //            },
    //            _ => {
    //            }
    //        }

    //        unsafe {
    //            gl::Clear(gl::COLOR_BUFFER_BIT);
    //        }

    //        let dt = time::precise_time_ns() - last_iter;

    //        if let AsteroidResult::Err(e) = state.update(&mut graphics, dt) {
    //            err = Some(AsteroidResult::Err(e));
    //        }
    //        if let AsteroidResult::Err(e) = state.render(&mut graphics) {
    //            err = Some(AsteroidResult::Err(e));
    //        }
    //        graphics.do_buffer();

    //        window.swap_buffers().unwrap();
    //    });
    //}

    //err.unwrap()
}

