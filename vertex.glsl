#version 140

in vec3 position;
in vec3 inNormal;
uniform mat4 model;
uniform mat4 view;
uniform mat4 proj;
uniform vec3 inColor;

out vec3 fColor;
out vec3 normal;
out vec3 pos;
out vec3 lightDir;

const vec3 inLightDir = normalize(vec3(-0.2f,-1.0f,-0.5));
void main() {
    fColor = inColor;
    gl_Position = proj * view * model * vec4(position, 1.0);
    pos = (view * model * vec4(position,1.0)).xyz;
    lightDir = (view * vec4(inLightDir,0.0)).xyz; //It's a vector!
    vec4 norm4 = transpose(inverse(view*model)) * vec4(inNormal,1.0);
    normal = normalize(norm4.xyz);
}
