
use ::sdl2::render::Canvas;
use ::sdl2::video::Window;
use ::sdl2::rect::Point;

pub struct Graphics {
    queue: Vec<Draw>
}

impl Graphics {
    pub fn new() -> Self {
        Graphics {
            queue: vec![],
        }
    }

    pub fn draw(&mut self, shape: Draw) {
        self.queue.push(shape);
    }

    pub fn empty_queue(&mut self, canvas: &mut ::sdl2::render::Canvas<::sdl2::video::Window>) {
        for shape in self.queue.iter() {
            match *shape {
                Draw::Color {r, g, b} => {
                    canvas.set_draw_color(::sdl2::pixels::Color::RGB(r, g, b));
                },
                Draw::CircleFill {x, y, r} => {
                    fill_circle(canvas, x + r, y + r, r);
                },
                Draw::CircleLine {x, y, r} => {
                    draw_circle(canvas, x + r, y + r, r);
                },
                Draw::RectangleFill {x, y, w, h} => {
                    canvas.fill_rect(::sdl2::rect::Rect::new(x, y, w, h)).unwrap();
                },
                Draw::RectangleLine {x, y, w, h} => {
                    canvas.draw_rect(::sdl2::rect::Rect::new(x, y, w, h)).unwrap();
                },
                Draw::Ellipse {x, y, f} => {},
                Draw::Triangle {x, y, b, h} => {},
                _ => {}
            }
        }

        self.queue.clear();
    }

    pub fn set_color(&mut self, r: u8, g: u8, b: u8) {
        self.draw(Draw::Color {r: r, g: g, b: b});
    }
}

#[derive(Clone, Copy, PartialEq)]
pub enum Draw {
    Color {
        r: u8,
        g: u8,
        b: u8,
    },
    CircleFill {
        x: i32,
        y: i32,
        r: i32,
    },
    CircleLine {
        x: i32,
        y: i32,
        r: i32,
    },
    RectangleFill {
        x: i32,
        y: i32,
        w: u32,
        h: u32,
    },
    RectangleLine {
        x: i32,
        y: i32,
        w: u32,
        h: u32,
    },
    Ellipse {
        x: i32,
        y: i32,
        f: i32,
    },
    Triangle {
        x: i32,
        y: i32,
        b: i32,
        h: i32,
    }
}

fn draw_circle(canvas: &mut Canvas<Window>, cx: i32, cy: i32, r: i32) {
    let mut x = r - 1;
    let mut y = 0;
    let mut dx = 1;
    let mut dy = 1;
    let mut err = dx - (r << 1);

    while x >= y {
        canvas.draw_point(Point::new(cx + x, cy + y)).unwrap();
        canvas.draw_point(Point::new(cx + y, cy + x)).unwrap();
        canvas.draw_point(Point::new(cx - y, cy + x)).unwrap();
        canvas.draw_point(Point::new(cx - x, cy + y)).unwrap();
        canvas.draw_point(Point::new(cx - x, cy - y)).unwrap();
        canvas.draw_point(Point::new(cx - y, cy - x)).unwrap();
        canvas.draw_point(Point::new(cx + y, cy - x)).unwrap();
        canvas.draw_point(Point::new(cx + x, cy - y)).unwrap();

        if err <= 0 {
            y += 1;
            err += dy;
            dy += 2;
        } else {
            x -= 1;
            dx += 2;
            err += (-r << 1) + dx;
        }
    }
}

fn fill_circle(canvas: &mut Canvas<Window>, cx: i32, cy: i32, r: i32) {
    let mut x = r - 1;
    let mut y = 0;
    let mut dx = 1;
    let mut dy = 1;
    let mut err = dx - (r << 1);

    while x >= y {
        canvas.draw_line(Point::new(cx + x, cy + y), Point::new(cx - x, cy + y)).unwrap();
        canvas.draw_line(Point::new(cx + y, cy + x), Point::new(cx - y, cy + x)).unwrap();
        canvas.draw_line(Point::new(cx - x, cy - y), Point::new(cx + x, cy - y)).unwrap();
        canvas.draw_line(Point::new(cx - y, cy - x), Point::new(cx + y, cy - x)).unwrap();

        if err <= 0 {
            y += 1;
            err += dy;
            dy += 2;
        } else {
            x -= 1;
            dx += 2;
            err += (-r << 1) + dx;
        }
    }
}

