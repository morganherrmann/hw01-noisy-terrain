#version 300 es
precision highp float;
uniform vec2 u_PlanePos; // Our location in the virtual world displayed by the plane

uniform vec3 u_Eye; // Camera pos
uniform mat4 u_ViewProj;
uniform ivec2 u_Dimensions; // Screen dimensions
uniform float u_Time;


const float PI = 3.14159265359;
const float TWO_PI = 6.28318530718;

// The fragment shader used to render the background of the scene
// Modify this to make your background more interesting

out vec4 out_Col;

void main() {
  out_Col = vec4(0.6f, 0.5f, 0.8f, 1.0);
}

//floor (x * 10) mod 2) * 0.5
