
extern crate asteroid;

use asteroid::error::AsteroidResult;
use asteroid::graphics::{Graphics, Draw};
use asteroid::Keycode;

use std::time::Duration;

struct Game {
    cx: i32,
    cy: i32,
    cr: i32,
}

impl asteroid::game::GameState for Game {
    fn update(&mut self, dt: f64) -> AsteroidResult {
        AsteroidResult::Ok
    }

    fn render(&self, graphics: &mut Graphics) -> AsteroidResult {
        graphics.set_color(255, 255, 255);
        graphics.draw(Draw::CircleFill {x: self.cx, y: self.cy, r: self.cr});
        graphics.set_color(0, 50, 255);
        graphics.draw(Draw::RectangleLine {x: self.cx - 30, y: 99i32 - self.cy as i32 * 3, w: self.cr as u32, h: 2u32 * self.cr as u32 / 3u32});
        AsteroidResult::Ok
    }

    fn keyboard_input(&mut self, key: Keycode) -> AsteroidResult {
        match key {
            Keycode::W => {
                self.cy -= 5;
            },
            Keycode::A => {
                self.cx -= 5;
            },
            Keycode::S => {
                self.cy += 5;
            },
            Keycode::D => {
                self.cx += 5;
            },
            Keycode::Q => {
                self.cr += 1;
            },
            Keycode::E => {
                if self.cr >= 0 {
                    self.cr -= 1;
                }
            },
            key => {
                println!("{:?}", key);
            }
        }
        AsteroidResult::Ok
    }
}

fn main() {
    let mut game = Game {
        cx: 50,
        cy: 50,
        cr: 33,
    };

    asteroid::game_loop(game, "config.nccl");

    //let sdl_context = sdl2::init().unwrap();
    //let video = sdl_context.video().unwrap();

    //let window = video.window("sdl2 test", 800, 600)
    //    .position_centered()
    //    .opengl()
    //    .build().unwrap();

    //let mut canvas = window.into_canvas().build().unwrap();

    //canvas.set_draw_color(Color::RGB(255, 0, 0));
    //canvas.clear();
    //canvas.present();
    //let mut event_loop = sdl_context.event_pump().unwrap();

    //'running: loop {
    //    for event in event_loop.poll_iter() {
    //        match event {
    //            Event::Quit {..} | Event::KeyDown { keycode: Some(Keycode::Escape), ..} => {
    //                break 'running;
    //            },
    //            _ => {}
    //        }
    //    }

    //    ::std::thread::sleep(Duration::new(0, 1_000_000_000u32 / 60));
    //}
}

//extern crate asteroid;

//use asteroid::game_loop;
//use asteroid::error::*;
//use asteroid::settings::Settings;
//use asteroid::game::*;
////use asteroid::pipeline::Graphics;
//
//use std::fs::File;
//
//struct Game {
//    x: u64,
//}
//
//impl GameState for Game {
//    fn update(&mut self, dt: u64) -> AsteroidResult {
//        AsteroidResult::Ok
//    }
//    fn render(&mut self) -> AsteroidResult {
//        AsteroidResult::Ok
//    }
//    //fn update(&mut self, graphics: &mut Graphics, dt: u64) -> AsteroidResult {
//    //    AsteroidResult::Ok
//    //}
//
//    //fn render(&mut self, graphics: &mut Graphics) -> AsteroidResult {
//    //    AsteroidResult::Ok
//    //}
//}
//
//fn main() {
//    let mut game = Game {
//        x: 0
//    };
//
//    game_loop(game, "config.nccl");
//}

