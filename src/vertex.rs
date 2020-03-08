
//use nalgebra::{Point3, Vector2, Vector3};

#[repr(C)]
#[derive(Debug, Clone)]
pub struct Vertex {
    pub pos: (f32, f32, f32),
    pub normal: (f32, f32, f32),
    pub tex_coords: (f32, f32),
    pub tangent: (f32, f32, f32),
    pub bitangent: (f32, f32, f32),
}

impl Default for Vertex {
    fn default() -> Self {
        Vertex {
            pos: (0.0, 0.0, 0.0),
            normal: (0.0, 0.0, 0.0),
            tex_coords: (0.0, 0.0),
            tangent: (0.0, 0.0, 0.0),
            bitangent: (0.0, 0.0, 0.0),
        }
    }
}

// TODO: get nalgebra to work with vulkano
impl Vertex {
    pub fn new_2d(x: f32, y: f32) -> Self {
        Vertex {
            pos: (x, y, 0.0),
            normal: (0.0, 0.0, 0.0),
            tex_coords: (0.0, 0.0),
            tangent: (0.0, 0.0, 0.0),
            bitangent: (0.0, 0.0, 0.0),
        }
    }
}

vulkano::impl_vertex!(Vertex, pos, normal, tex_coords, tangent, bitangent);
