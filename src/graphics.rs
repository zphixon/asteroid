
use ::sdl2::render::Canvas;
use ::sdl2::video::Window;
use ::sdl2::rect::Point;

pub struct Graphics {
    pub canvas: Canvas<Window>
}

impl Graphics {
    pub fn new(canvas: Canvas<Window>) -> Self {
        Graphics {
            canvas: canvas,
        }
    }

    pub fn draw(&mut self, shape: Draw) {
        match shape {
            Draw::CircleFill {x, y, r} => {
                draw_circle(&mut self.canvas, true, x + r, y + r, r);
            },
            Draw::CircleLine {x, y, r} => {
                draw_circle(&mut self.canvas, false, x + r, y + r, r);
            },
            Draw::RectangleFill {x, y, w, h} => {
                self.canvas.fill_rect(::sdl2::rect::Rect::new(x, y, w, h)).unwrap();
            },
            Draw::RectangleLine {x, y, w, h} => {
                self.canvas.draw_rect(::sdl2::rect::Rect::new(x, y, w, h)).unwrap();
            },
            Draw::EllipseFill {x, y, w, h} => {
                draw_ellipse(&mut self.canvas, true, x, y, w, h);
            },
            Draw::EllipseLine {x, y, w, h} => {
                draw_ellipse(&mut self.canvas, false, x, y, w, h);
            },
            //Draw::Triangle {x, y, b, h} => {},
            s => {
                unimplemented!("not implemented: {:?}", s);
            }
        }
    }

    pub fn set_color(&mut self, r: u8, g: u8, b: u8) {
        self.canvas.set_draw_color(::sdl2::pixels::Color::RGB(r, g, b));
    }
}

#[derive(Clone, Copy, PartialEq, Debug)]
pub enum Draw {
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
    EllipseFill {
        x: i32,
        y: i32,
        w: i32,
        h: i32,
    },
    EllipseLine {
        x: i32,
        y: i32,
        w: i32,
        h: i32,
    },
    Triangle {
        x: i32,
        y: i32,
        b: i32,
        h: i32,
    }
}

fn draw_circle(canvas: &mut Canvas<Window>, fill: bool, cx: i32, cy: i32, r: i32) {
    let mut x = 0;
    let mut y = r;
    let mut d = 2 - 2 * r;
    let mut err;

    while y >= 0 {
        if fill {
            canvas.draw_line(Point::new(cx + x, cy + y), Point::new(cx - x, cy + y)).unwrap();
            canvas.draw_line(Point::new(cx + x, cy - y), Point::new(cx - x, cy - y)).unwrap();
        } else {
            canvas.draw_point(Point::new(cx + x, cy + y)).unwrap();
            canvas.draw_point(Point::new(cx - x, cy + y)).unwrap();
            canvas.draw_point(Point::new(cx + x, cy - y)).unwrap();
            canvas.draw_point(Point::new(cx - x, cy - y)).unwrap();
        }

        err = 2 * (d + y) - 1;
        if d < 0 && err <= 0 {
            x += 1;
            d += 2 * x + 1;
            continue;
        }

        err = 2 * (d - x) - 1;
        if d > 0 && err > 0 {
            y -= 1;
            d += 1 - 2 * y;
            continue;
        }

        x += 1;
        d += 2 * (x - y);
        y -= 1;
    }
}

fn draw_ellipse(canvas: &mut Canvas<Window>, fill: bool, ex: i32, ey: i32, w: i32, h: i32) {
    let ex = ex + w;
    let ey = ey + h;

    let a2 = w * w;
    let b2 = h * h;
    let fa2 = 4 * a2;
    let fb2 = 4 * b2;

    let mut x = 0;
    let mut y = h;
    let mut sigma = 2 * b2 + a2 * (1 - 2 * h);

    while b2 * x <= a2 * y {
        if fill {
            canvas.draw_line(Point::new(ex + x, ey + y), Point::new(ex - x, ey + y)).unwrap();
            canvas.draw_line(Point::new(ex + x, ey - y), Point::new(ex - x, ey - y)).unwrap();
        } else {
            canvas.draw_point(Point::new(ex + x, ey + y)).unwrap();
            canvas.draw_point(Point::new(ex - x, ey + y)).unwrap();
            canvas.draw_point(Point::new(ex + x, ey - y)).unwrap();
            canvas.draw_point(Point::new(ex - x, ey - y)).unwrap();
        }

        if sigma >= 0 {
            sigma += fa2 * (1 - y);
            y -= 1;
        }

        sigma += b2 * ((4 * x) + 6);
        x += 1;
    }

    let mut x = w;
    let mut y = 0;
    let mut sigma = 2 * a2 + b2 * (1 - 2 * w);

    while a2 * y <= b2 * x {
        if fill {
            canvas.draw_line(Point::new(ex + x, ey + y), Point::new(ex - x, ey + y)).unwrap();
            canvas.draw_line(Point::new(ex + x, ey - y), Point::new(ex - x, ey - y)).unwrap();
        } else {
            canvas.draw_point(Point::new(ex + x, ey + y)).unwrap();
            canvas.draw_point(Point::new(ex - x, ey + y)).unwrap();
            canvas.draw_point(Point::new(ex + x, ey - y)).unwrap();
            canvas.draw_point(Point::new(ex - x, ey - y)).unwrap();
        }

        if sigma >= 0 {
            sigma += fb2 * (1 - x);
            x -= 1;
        }

        sigma += a2 * ((4 * y) + 6);
        y += 1;
    }
}

