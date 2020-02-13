
extern crate asteroid;

fn main() {
    let (r, l) = asteroid::Renderer::initialize();
    r.main_loop(l);
}

