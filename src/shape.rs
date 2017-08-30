
#[derive(Copy, Clone)]
struct Vertex {
    position: [f32; 2],
}
implement_vertex!(Vertex, position);

pub struct Shape {
    inner: Vec<Vertex>
}

