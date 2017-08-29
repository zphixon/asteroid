
pub struct Graphics {
    inner: Vec<RenderEvent>
}

impl Graphics {
    pub fn new() -> Self {
        Graphics {
            inner: vec![]
        }
    }

    pub fn do_buffer(&mut self) {
        unsafe {
            //::gl::DrawArrays(::gl::TRIANGLES, 0, 3);
        }

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

pub enum RenderEvent {
    Clear,
    Square {
        x: u32,
        y: u32,
        width: u32,
        height: u32,
    },
    Ellipse {
        x: u32,
        y: u32,
        width: u32,
        height: u32,
    },
}

