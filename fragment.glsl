#version 140

in vec3 fColor;
//uniform sampler2D tex;

out vec4 outColor;

//const float ambient = 0.5f;
void main() {
    outColor = vec4(fColor, 1.0f);
}
