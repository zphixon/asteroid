
use vulkano::buffer::{BufferUsage, CpuAccessibleBuffer};
use vulkano::device::{Device, Queue};
use tobj;

use std::sync::Arc;
use std::path::Path;

use vulkano::image::{ImmutableImage, Dimensions};
use vulkano::format::Format;

use crate::Vertex;
use image::GenericImageView;

#[derive(Clone, Copy, Debug)]
pub enum TextureKind {
    Diffuse,
    Specular,
    Normal,
    Height,
}

#[derive(Clone)]
pub struct Texture {
    pub img: Arc<ImmutableImage<Format>>,
    pub kind: TextureKind,
    pub path: String,
    pub dimensions: (u32, u32),
}

impl Texture {
    pub fn new(path: String, kind: TextureKind, queue: Arc<Queue>) -> Self {
        let img = image::open(Path::new(&path)).expect(&format!("Couldn't load image {}", path));
        let data = img.flipv().raw_pixels();
        let dimensions = Dimensions::Dim2d { width: img.width(), height: img.height() };

        let (img, _tex_future) = ImmutableImage::from_iter(
            data.iter().cloned(),
            dimensions,
            Format::R8G8B8A8Srgb,
            queue.clone()
        ).unwrap();

        Texture {
            img,
            kind,
            path,
            dimensions: (dimensions.width(), dimensions.height()),
        }
    }
}

pub struct Model {
    meshes: Vec<Mesh>,
    dir: String,
}

impl Model {
    pub fn new(path: &str, queue: Arc<Queue>) -> Model {
        let path = Path::new(path);
        let mut meshes = Vec::new();
        let dir = path.parent().unwrap_or_else(|| Path::new(""))
            .to_str().unwrap().into();
        let obj = tobj::load_obj(path);
        let (models, materials) = obj.expect("could't load obj file");
        for model in models {
            let mesh = &model.mesh;
            let num_verts = mesh.positions.len() / 3;

            let mut verts = Vec::with_capacity(num_verts);
            let indices: Vec<u32> = mesh.indices.clone();

            let (p, n, t) = (&mesh.positions, &mesh.normals, &mesh.texcoords);
            for i in 0..num_verts {
                verts.push(Vertex {
                    pos: (p[i * 3], p[i * 3 + 1], p[i * 3 + 2]),
                    normal: (n[i * 3], n[i * 3 + 1], n[i * 3 + 2]),
                    tex_coords: (t[i * 2], t[i * 2 + 1]),
                    tangent: (0.0, 0.0, 0.0),
                    bitangent: (0.0, 0.0, 0.0),
                })
            }

            let mut textures = Vec::new();
            if let Some(mat_id) = mesh.material_id {
                let mat = &materials[mat_id];
                if !mat.diffuse.is_empty() {
                    textures.push(Texture::new(
                        format!("{}/{}", &dir, &mat.diffuse_texture),
                        TextureKind::Diffuse,
                        queue.clone(),
                    ));
                }
                if !mat.specular_texture.is_empty() {
                    textures.push(Texture::new(
                        format!("{}/{}", &dir, &mat.specular_texture),
                        TextureKind::Specular,
                        queue.clone(),
                    ));
                }
                if !mat.normal_texture.is_empty() {
                    textures.push(Texture::new(
                        format!("{}/{}", &dir, &mat.normal_texture),
                        TextureKind::Normal,
                        queue.clone(),
                    ));
                }
            }

            meshes.push(Mesh::new(verts, indices, textures, model.name));
        }

        Model {
            meshes,
            dir,
        }
    }

    pub fn buffers(&self, device: Arc<Device>) -> Vec<Arc<CpuAccessibleBuffer<[Vertex]>>> {
        self.meshes.iter().map(|mesh| mesh.buffer(device.clone())).collect()
    }
}

#[derive(Default)]
pub struct Mesh {
    verts: Vec<Vertex>,
    indices: Vec<u32>,
    textures: Vec<Texture>,
    // ? future: CommandBufferExecFuture<NowFuture, AutoCommandBuffer>,
    // descriptor: Arc<PersistentDescriptorSet>
    name: String,
}

// TODO: object loader
impl Mesh {
    pub fn new(verts: Vec<Vertex>, indices: Vec<u32>, textures: Vec<Texture>, name: String) -> Self {
        Mesh {
            verts,
            indices,
            textures,
            name,
        }
    }

    pub fn new_verts(verts: Vec<Vertex>) -> Self {
        Mesh {
            verts,
            indices: vec![],
            textures: vec![],
            name: "idk lol".into(),
        }
    }

    pub fn buffer(&self, device: Arc<Device>) -> Arc<CpuAccessibleBuffer<[Vertex]>> {
        CpuAccessibleBuffer::from_iter(
            device,
            BufferUsage::all(),
            false,
            self.verts.iter().cloned()
        ).expect("couldn't make buffer")
    }

    pub fn verts(&self) -> &[Vertex] {
        &self.verts
    }

    pub fn indices(&self) -> &[u32] {
        &self.indices
    }
}
