#version 140

in vec3 position;
in vec3 inNormal;
uniform mat4 model;
uniform mat4 view;
uniform mat4 proj;
uniform vec3 inColor;

out vec3 fColor;

void main() {
    fColor = inColor;
    gl_Position = proj * view * model * vec4(position, 1.0);
}
