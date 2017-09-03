
#[macro_use]
extern crate nccl;
extern crate time;
//extern crate adi;
extern crate sdl2;

use sdl2::pixels::Color;
use sdl2::event::Event;
pub use sdl2::keyboard::Keycode;

pub mod error;
pub mod settings;
pub mod game;
pub mod graphics;

use error::*;
use game::*;
use graphics::Graphics;
use settings::Settings;

use std::time::Duration;

pub fn game_loop<T: GameState>(mut game: T, settings_file: &str) -> AsteroidResult {
    let settings = settings::open(settings_file).unwrap();

    let sdl_context = sdl2::init().unwrap();
    let window_builder = sdl_context.video().unwrap();

    let window = window_builder.window(&settings.title, settings.width, settings.height)
        .opengl()
        .position_centered()
        .build().unwrap();

    let mut canvas: sdl2::render::Canvas<sdl2::video::Window> = window.into_canvas().build().unwrap();

    canvas.set_draw_color(Color::RGB(0, 0, 0));
    canvas.clear();
    canvas.present();
    let mut event_loop = sdl_context.event_pump().unwrap();

    let mut graphics = Graphics::new();
    let mut tick = 0;
    let mut t = time::precise_time_s();
    let mut err = None;

    while err.is_none() {
        for event in event_loop.poll_iter() {
            match event {
                Event::Quit {..} => err = Some(AsteroidResult::Ok),
                Event::KeyDown { keycode: Some(Keycode::Escape), .. } => {
                    if settings.exit_on_escape {
                        err = Some(AsteroidResult::Ok);
                    } else {
                        game.keyboard_input(Keycode::Escape);
                    }
                },
                Event::KeyDown { keycode: Some(key), .. } => {
                    game.keyboard_input(key);
                }
                _ => {}
            }
        }

        canvas.set_draw_color(Color::RGB(0, 0, 0));
        canvas.clear();

        let t_now = time::precise_time_s();
        game.update(t_now - t);

        game.render(&mut graphics);

        graphics.empty_queue(&mut canvas);
        canvas.present();

        tick += 1;
        if tick >= 1_000 {
            // sketchy fps algorithm
            println!("fps: {}", 1. / (t_now - t));
            tick = 0;
        }

        t = time::precise_time_s();
    }

    err.unwrap()
}

