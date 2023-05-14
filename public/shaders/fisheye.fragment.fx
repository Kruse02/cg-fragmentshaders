#version 300 es
precision mediump float;

// Input
in vec2 model_uv;

// Uniforms
uniform sampler2D image;

// Output
out vec4 FragColor;

void main() {
    vec2 scaled_uv = model_uv * 2.0 - 1.0;

    float theta = atan(scaled_uv.y, scaled_uv.x);
    float radius = pow(length(scaled_uv), 1.5);

    vec2 fish_eye_uv = vec2(radius * cos(theta), radius * sin(theta));

    fish_eye_uv = 0.5 * (fish_eye_uv + 1.0);

    FragColor = texture(image, fish_eye_uv);
}
