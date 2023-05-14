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

    float luminance = 0.299 * color.r + 0.587 * color.g + 0.114 * color.b;
    color.rgb = vec3(luminance);

    FragColor = color;
}
