
use error::AsteroidResult;
use graphics::{Graphics, Draw};

use std::collections::HashMap;

pub struct Args {
    dt: f64,
    graphics: Graphics,
    keys: HashMap<::Keycode, bool>,
}

impl Args {
    pub fn new(graphics: Graphics) -> Self {
        Args {
            dt: 0.,
            graphics: Graphics::new(),
            keys: HashMap::new(),
        }
    }

    pub fn is_down(&self, key: ::Keycode) -> bool {
        *self.keys.get(&key).unwrap_or(&false)
    }

    pub fn set_key_down(&mut self, key: ::Keycode) {
        self.keys.insert(key, true);
    }

    pub fn set_key_up(&mut self, key: ::Keycode) {
        self.keys.insert(key, false);
    }

    pub fn set_dt(&mut self, dt: f64) {
        self.dt = dt;
    }

    pub fn dt(&self) -> f64 {
        self.dt
    }

    pub fn graphics(&mut self) -> &mut Graphics {
        &mut self.graphics
    }
}

pub trait GameState {
    fn update(&mut self, args: &mut Args) -> AsteroidResult;
    fn render(&self, args: &mut Args) -> AsteroidResult;

    #[allow(unused_variables)]
    fn keyboard_input(&mut self, key: ::Keycode) -> AsteroidResult { AsteroidResult::Ok }
    #[allow(unused_variables)]
    fn mouse_move(&mut self, position: (f64, f64)) -> AsteroidResult { AsteroidResult::Ok }
    #[allow(unused_variables)]
    fn mouse_wheel(&mut self, scroll: f64) -> AsteroidResult { AsteroidResult::Ok }
    fn mouse_input(&mut self /* enum MouseButton */) -> AsteroidResult { AsteroidResult::Ok }
    fn analog_input(&mut self /* enum Direction, value: f64 */) -> AsteroidResult { AsteroidResult::Ok }
    //fn update(&mut self, graphics: &mut Graphics, dt: u64) -> AsteroidResult;
    //fn render(&mut self, graphics: &mut Graphics) -> AsteroidResult;

    //#[allow(unused_variables)]
    //fn keyboard_input(&mut self, graphics: &mut Graphics, key: String) -> AsteroidResult { AsteroidResult::Ok }
    //#[allow(unused_variables)]
    //fn mouse_move(&mut self, graphics: &mut Graphics, position: (f64, f64)) -> AsteroidResult { AsteroidResult::Ok }
    //#[allow(unused_variables)]
    //fn mouse_wheel(&mut self, graphics: &mut Graphics, scroll: f64) -> AsteroidResult { AsteroidResult::Ok }

    //fn mouse_entered(&mut self, graphics: &mut Graphics) -> AsteroidResult { AsteroidResult::Ok }
    //fn mouse_left(&mut self, graphics: &mut Graphics) -> AsteroidResult { AsteroidResult::Ok }
    //fn mouse_input(&mut self, graphics: &mut Graphics /* enum MouseButton */) -> AsteroidResult { AsteroidResult::Ok }
    //fn analog_input(&mut self, graphics: &mut Graphics /* enum Direction, value: f64 */) -> AsteroidResult { AsteroidResult::Ok }
}

