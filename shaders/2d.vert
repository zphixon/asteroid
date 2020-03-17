#version 450

layout (location = 0) in vec3 pos;
layout (location = 1) in vec3 normal;
layout (location = 2) in vec2 tex_coords;
layout (location = 3) in vec3 tangent;
layout (location = 4) in vec3 bitangent;

void main() {
    gl_Position = vec4(pos.x, pos.y, 0.0, 1.0);
}
