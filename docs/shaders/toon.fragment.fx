#version 300 es
precision mediump float;

// Input
in vec2 model_uv;

// Uniforms
uniform sampler2D image;

// Output
out vec4 FragColor;

void main() {
vec4 color = texture(image, model_uv);

float r = round(color.r * 4.0) / 4.0;
float g = round(color.g * 4.0) / 4.0;
float b = round(color.b * 4.0) / 4.0;

FragColor = vec4(r, g, b, color.a);
}