#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec2 aTexCoord;

out vec3 FragPos;
out vec2 TexCoord;

uniform mat4 projection;
uniform mat4 view;
uniform mat4 transform;

void main() {
    FragPos = vec3(transform * vec4(aPos, 1.0));
    gl_Position = projection * view * vec4(FragPos, 1.0);
    TexCoord = aTexCoord;
}