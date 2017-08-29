
use error::AsteroidResult;
use pipeline::Graphics;

pub trait GameState {
    fn update(&mut self, graphics: &mut Graphics, dt: u64) -> AsteroidResult;
    fn render(&mut self, graphics: &mut Graphics) -> AsteroidResult;

    #[allow(unused_variables)]
    fn keyboard_input(&mut self, graphics: &mut Graphics, key: String) -> AsteroidResult { AsteroidResult::Ok }
    #[allow(unused_variables)]
    fn mouse_move(&mut self, graphics: &mut Graphics, position: (f64, f64)) -> AsteroidResult { AsteroidResult::Ok }
    #[allow(unused_variables)]
    fn mouse_wheel(&mut self, graphics: &mut Graphics, scroll: f64) -> AsteroidResult { AsteroidResult::Ok }

    fn mouse_entered(&mut self, graphics: &mut Graphics) -> AsteroidResult { AsteroidResult::Ok }
    fn mouse_left(&mut self, graphics: &mut Graphics) -> AsteroidResult { AsteroidResult::Ok }
    fn mouse_input(&mut self, graphics: &mut Graphics /* enum MouseButton */) -> AsteroidResult { AsteroidResult::Ok }
    fn analog_input(&mut self, graphics: &mut Graphics /* enum Direction, value: f64 */) -> AsteroidResult { AsteroidResult::Ok }
}

