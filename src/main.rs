
extern crate asteroid;

use asteroid::{GameState, game_loop};
use asteroid::error::*;

struct Game {
    x: i32,
}

impl GameState for Game {
    fn update(&mut self, dt: u64) -> AsteroidResult {
//        if self.x == 99 {
//            return AsteroidError::exit();
//        }
//
//        self.x += 1;

        AsteroidResult::Ok
    }

    fn render(&mut self) -> AsteroidResult {
        println!("{}", self.x);
        AsteroidResult::Ok
    }
}

fn main() {
    let mut game = Game {
        x: 0
    };

    game_loop(game).assert_exit();
}

