#version 330 core
#extension GL_ARB_separate_shader_objects : require
in vec3 position;
in vec3 color_in;
layout (location = 0) out vec4 color;

uniform mat4 MVP;

void main() {
  color = vec4(color_in, 1);
  gl_Position = MVP * vec4(position, 1);
}
