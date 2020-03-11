
#version 330 core

in vec3 frag_pos;
in vec3 normal;
in vec2 tex_coords;

out vec4 color;

uniform sampler2D diffuse1;

float distance_from_up(vec3 norm) {
    float prod = dot(norm, vec3(0.0, 1.0, 0.0));
    if (prod >= 0.15)
        return prod;
    else
        return 0.15;
}

void main() {
    float d = distance_from_up(normal);
    color = vec4(d * texture(diffuse1, tex_coords).rgb, 1.0);
}

