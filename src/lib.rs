
extern crate nccl;
extern crate time;
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

//use std::time::Duration;

pub fn game_loop<T: GameState>(mut game: T, settings: Settings) -> AsteroidResult {
    let sdl_context = sdl2::init().unwrap();
    let window_builder = sdl_context.video().unwrap();

    let window = window_builder.window(&settings.title, settings.width, settings.height)
        .opengl()
        .position_centered()
        .build().unwrap();

    let canvas = window.into_canvas();
    let mut canvas = if settings.vsync {
        canvas.present_vsync()
    } else { canvas }.build().unwrap();

    canvas.set_draw_color(Color::RGB(0, 0, 0));
    canvas.clear();
    canvas.present();
    let mut event_loop = sdl_context.event_pump().unwrap();

    let mut last_t = time::precise_time_s();
    let mut err = None;
    let mut args = Args::new();

    let mut graphics = Graphics::new(canvas);

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
                    if !args.is_down(key) {
                        args.set_key_down(key);
                    }
                },
                Event::KeyUp { keycode: Some(key), .. } => {
                    args.set_key_up(key);
                }
                _ => {}
            }
        }

        graphics.canvas.set_draw_color(Color::RGB(0, 0, 0));
        graphics.canvas.clear();

        println!("{}", time::precise_time_s() - last_t);
        args.set_dt(time::precise_time_s() - last_t);

        game.update(&mut args);
        game.render(&mut args, &mut graphics);

        // put sleep here

        graphics.canvas.present();

        last_t = time::precise_time_s();
    }

    err.unwrap()
}

struct TestGame {
    cx: f64,
    cy: f64,
    cr: f64,
}

impl GameState for TestGame {
    fn update(&mut self, args: &mut Args) -> AsteroidResult {
        if args.is_down(Keycode::W) {
            self.cy -= 50000. * args.dt();
        }
        if args.is_down(Keycode::A) {
            self.cx -= 50000. * args.dt();
        }
        if args.is_down(Keycode::S) {
            self.cy += 50000. * args.dt();
        }
        if args.is_down(Keycode::D) {
            self.cx += 50000. * args.dt();
        }
        if args.is_down(Keycode::Q) {
            self.cr += 50000. * args.dt();
        }
        if args.is_down(Keycode::E) {
            self.cr -= 50000. * args.dt();
        }
        AsteroidResult::Ok
    }

    fn render(&self, args: &mut Args, graphics: &mut Graphics) -> AsteroidResult {
        graphics.set_color(255, 255, 255);
        graphics.draw(self::graphics::Draw::CircleFill {x: self.cx as i32, y: self.cy as i32, r: self.cr as i32});
        graphics.draw(self::graphics::Draw::EllipseLine {x: self.cx as i32, y: self.cy as i32, w: self.cr as i32 * 2, h: self.cr as i32});
        graphics.set_color(0, 50, 255);
        graphics.draw(self::graphics::Draw::RectangleLine {x: (self.cx - 30.) as i32, y: (99. - self.cy * 3.) as i32, w: self.cr as u32, h: (2. * self.cr / 3.) as u32});
        //graphics.draw(Draw::Triangle {x: 0, y: 0, b: 0, h: 0});
        AsteroidResult::Ok
    }
}


#[no_mangle]
pub fn game_loop_test(settings: Settings) -> AsteroidResult {
    let mut game = TestGame {
        cx: 50.,
        cy: 50.,
        cr: 33.,
    };

    let sdl_context = sdl2::init().unwrap();
    let window_builder = sdl_context.video().unwrap();

    let window = window_builder.window(&settings.title, settings.width, settings.height)
        .opengl()
        .position_centered()
        .build().unwrap();

    let canvas = window.into_canvas();
    let mut canvas = if settings.vsync {
        canvas.present_vsync()
    } else { canvas }.build().unwrap();

    canvas.set_draw_color(Color::RGB(0, 0, 0));
    canvas.clear();
    canvas.present();
    let mut event_loop = sdl_context.event_pump().unwrap();

    let mut last_t = time::precise_time_s();
    let mut err = None;
    let mut args = Args::new();

    let mut graphics = Graphics::new(canvas);

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
                    if !args.is_down(key) {
                        args.set_key_down(key);
                    }
                },
                Event::KeyUp { keycode: Some(key), .. } => {
                    args.set_key_up(key);
                }
                _ => {}
            }
        }

        graphics.canvas.set_draw_color(Color::RGB(0, 0, 0));
        graphics.canvas.clear();

        println!("{}", time::precise_time_s() - last_t);
        args.set_dt(time::precise_time_s() - last_t);

        game.update(&mut args);
        game.render(&mut args, &mut graphics);

        // put sleep here

        graphics.canvas.present();

        last_t = time::precise_time_s();
    }

    err.unwrap()
}
