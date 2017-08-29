
extern crate asteroid;

use asteroid::game_loop;
use asteroid::error::*;
use asteroid::settings::Settings;
use asteroid::game::*;
use asteroid::pipeline::Graphics;

use std::fs::File;

struct Game {
    x: u64,
}

impl GameState for Game {
    fn update(&mut self, graphics: &mut Graphics, dt: u64) -> AsteroidResult {
        AsteroidResult::Ok
    }

    fn render(&mut self, graphics: &mut Graphics) -> AsteroidResult {
        AsteroidResult::Ok
    }
}

fn main() {
    let mut game = Game {
        x: 0
    };

    game_loop(game, Settings {
        title: String::from("Hello, my dude"),
        dimensions: (200, 50),
        vsync: true,
    });
}

