
#version 330 core

layout (location = 0) in vec3 p_pos;
layout (location = 1) in vec3 p_normal;
layout (location = 2) in vec2 p_tex_coords;

uniform mat4 model;
uniform mat4 view;
uniform mat4 proj;

out vec3 frag_pos;
out vec3 normal;
out vec2 tex_coords;

void main() {
    gl_Position = proj * view * model * vec4(p_pos, 1.0);

    frag_pos = vec3(model * vec4(p_pos, 1.0));
    normal = p_normal;
    tex_coords = p_tex_coords;
}
