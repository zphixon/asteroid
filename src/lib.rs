
extern crate glutin;
extern crate gl;

use glutin::GlContext;

pub mod error;

use error::*;

use std::time::Instant;

pub trait GameState {
    fn update(&mut self, dt: u64) -> AsteroidResult;
    fn render(&mut self) -> AsteroidResult;
}

pub fn game_loop<T: GameState>(state: T) -> AsteroidResult {
    let mut time = Instant::now();

    let mut event_loop = glutin::EventsLoop::new();
    let context = glutin::ContextBuilder::new()
        .with_vsync(true);
    let window = glutin::WindowBuilder::new()
        .with_title("Hello, world!")
        .with_dimensions(1024, 768);
    let context = glutin::ContextBuilder::new()
        .with_vsync(true);
    let window = glutin::GlWindow::new(window, context, &event_loop).unwrap();

    let mut running = true;
    while running {
        event_loop.poll_events(|event| {
            match event {
                glutin::Event::WindowEvent { event, .. } => match event {
                    glutin::WindowEvent::Closed => {
                        running = false;
                    },
                    glutin::WindowEvent::Resized(w, h) => window.resize(w, h),
                    _ => {}
                },
                _ => {}
            }
        });
    }

    AsteroidError::exit()

    //loop {
    //    let elapsed = time.elapsed();
    //    let dt = (elapsed.as_secs() * 1_000)
    //        + (elapsed.subsec_nanos() / 1_000_000) as u64;

    //    if let AsteroidResult::Err(e) = self.state.update(dt) {
    //        return AsteroidResult::Err(e);
    //    }
    //    if let AsteroidResult::Err(e) = self.state.render() {
    //        return AsteroidResult::Err(e);
    //    }

    //    time = Instant::now();
    //}
}

