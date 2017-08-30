
pub struct Graphics {
    inner: Vec<Shape>
}

impl Graphics {
    pub fn new() -> Self {
        Graphics {
            inner: vec![]
        }
    }

    fn do_buffer(&mut self, target: &mut ::glium::Frame) {
        self.inner.clear();
    }

    pub fn clear(&mut self) {
        self.inner.push(RenderEvent::Clear);
    }

    pub fn square(&mut self, x: u32, y: u32, width: u32, height: u32) {
        self.inner.push(RenderEvent::Square {
            x: x,
            y: y,
            width: width,
            height: height,
        });
    }

    pub fn ellipse(&mut self, x: u32, y: u32, width: u32, height: u32) {
        self.inner.push(RenderEvent::Ellipse {
            x: x,
            y: y,
            width: width,
            height: height,
        });
    }
}

pub enum ShapeKind {
    Triangle,
    Square,
    Ellipse,
}

pub struct Shape {
    kind: ShapeKind,
    x: u32,
    y: u32,
    width: u32,
    height: u32,
    rot: u32,
}

