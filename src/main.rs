
extern crate asteroid;

use asteroid::error::AsteroidResult;
use asteroid::graphics::{Graphics, Draw};
use asteroid::Keycode;
use asteroid::game::{Args, GameState};
use asteroid::settings::{SettingsBuilder, open};

use std::time::Duration;

struct Game {
    cx: f64,
    cy: f64,
    cr: f64,
}

impl GameState for Game {
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
        graphics.draw(Draw::CircleFill {x: self.cx as i32, y: self.cy as i32, r: self.cr as i32});
        graphics.draw(Draw::EllipseLine {x: self.cx as i32, y: self.cy as i32, w: self.cr as i32 * 2, h: self.cr as i32});
        graphics.set_color(0, 50, 255);
        graphics.draw(Draw::RectangleLine {x: (self.cx - 30.) as i32, y: (99. - self.cy * 3.) as i32, w: self.cr as u32, h: (2. * self.cr / 3.) as u32});
        //graphics.draw(Draw::Triangle {x: 0, y: 0, b: 0, h: 0});
        AsteroidResult::Ok
    }
}

fn main() {
    let mut game = Game {
        cx: 50.,
        cy: 50.,
        cr: 33.,
    };

    let settings = SettingsBuilder::new()
        .title("Hello, world!")
        .width(700)
        .height(490)
        .vsync(true)
        .build();
    //let settings = settings::open(settings_file).unwrap();

    asteroid::game_loop(game, settings);
}

