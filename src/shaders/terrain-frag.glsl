#version 300 es
precision highp float;

uniform vec2 u_PlanePos; // Our location in the virtual world displayed by the plane

in vec3 fs_Pos;
in vec4 fs_Nor;
in vec4 fs_Col;

uniform float u_Time;
uniform float desert_Vegetation;



in float fs_Sine;

out vec4 out_Col; // This is the final output color that you will see on your
                  // screen for the pixel that is currently being processed.

                  float random1( vec2 p , vec2 seed) {
                    return fract(sin(dot(p + seed, vec2(127.1, 311.7))) * 43758.5453);
                  }

void main()
{


    vec3 colorA;
    vec3 colorB;

    if (fs_Pos.x + u_PlanePos.x < 0.f){

     ///-----OH, THE PLACES YOU'LL GO
   float t = clamp(smoothstep(10.0, 20.0, length(fs_Pos / 2.f)), 0.0, 1.0); // Distance fog
   out_Col = vec4(mix(vec3(0.5 * (fs_Sine + 1.0)), vec3(164.0 / 255.0, 233.0 / 255.0, 1.0), t), 1.0);
   ///water
   if (fs_Pos.y < 0.5f){
     colorA = vec3(126.f/255.f, 221.f/255.f, 228.f/255.f);
     colorB = vec3(123.f/255.f, 221.f/255.f, 228.f/255.f);
     out_Col = vec4(mix(colorA, colorB, t), 01.f);
   }else if (fs_Pos.y < .54f){
     out_Col = vec4(0.f, 0.f, 0.f, 1.f);
   } else if (fs_Pos.y < 1.0f) {
     colorA = vec3(167.f/255.f, 146.f/255.f, 204.f/255.f);
     colorB = vec3(17.f/255.f, 186.f/255.f, 204.f/255.f);
     out_Col = vec4(mix(colorA, colorB, t), 01.f);
   } else if (fs_Pos.y < 1.05f){
     out_Col = vec4(0.f, 0.f, 0.f, 1.f);
   }
   else if (fs_Pos.y < 1.54f) {
     t = clamp(smoothstep(50.0, 70.0, length(fs_Pos)), 0.0, 1.0);
      colorA = vec3(221.f/255.f, 186.f/255.f, 122.f/255.f);
     colorB = vec3(14.f/255.f, 110.f/255.f, 64.f/255.f);
     out_Col = vec4(mix(colorA, colorB, t), 01.f);
   } else if (fs_Pos.y < 1.6f){
     out_Col = vec4(0.f, 0.f, 0.f, 1.f);
   } else if (fs_Pos.y < 2.0f) {
      colorA = vec3(252.f/255.f, 121.f/255.f, 228.f/255.f);
     colorB = vec3(252.f/255.f, 256.f/255.f, 104.f/255.f);
     out_Col = vec4(mix(colorA, colorB, t), 01.f);
   } else if (fs_Pos.y < 2.05f){
     out_Col = vec4(0.f, 0.f, 0.f, 1.f);
   } else if (fs_Pos.y < 2.5f) {
     colorA = vec3(112.f/255.f, 204.f/255.f, 136.f/255.f);
     colorB = vec3(115.f/255.f, 216.f/255.f, 234.f/255.f);
     out_Col = vec4(mix(colorA, colorB, t), 01.f);
   } else if (fs_Pos.y < 2.55f){
     out_Col = vec4(0.f, 0.f, 0.f, 1.f);
   } else if (fs_Pos.y < 3.3f) {
      colorA = vec3(200.f/255.f, 204.f/255.f, 136.f/255.f);
      colorB = vec3(242.f/255.f, 256.f/255.f, 186.f/255.f);
     out_Col = vec4(mix(colorA, colorB, fs_Pos.y / 7.f), 1.f);
   } else if (fs_Pos.y < 3.35f){
     out_Col = vec4(0.f, 0.f, 0.f, 1.f);
   } else if (fs_Pos.y < 4.f) {
     colorA = vec3(255.f/255.f, 241.f/255.f, 142.f/255.f);
     colorB = vec3(242.f/255.f, 256.f/255.f, 156.f/255.f);
     out_Col = vec4(mix(colorA, colorB, fs_Pos.y / 7.f), 1.f);
   } else if (fs_Pos.y < 4.05f){
     out_Col = vec4(0.f, 0.f, 0.f, 1.f);
   }else if (fs_Pos.y < 4.5f) {
     colorA = vec3(155.f/255.f, 191.f/255.f, 162.f/255.f);
     colorB = vec3(162.f/255.f, 216.f/255.f, 166.f/255.f);
     out_Col = vec4(mix(colorA, colorB, fs_Pos.y / 7.f), 1.f);
   } else if (fs_Pos.y < 4.55f){
     out_Col = vec4(0.f, 0.f, 0.f, 1.f);
   } else if (fs_Pos.y < 5.f) {
     colorA = vec3(242.f/255.f, 161.f/255.f, 182.f/255.f);
     colorB = vec3(252.f/255.f, 206.f/255.f, 216.f/255.f);
     out_Col = vec4(mix(colorA, colorB, fs_Pos.y / 7.f), 1.f);
   } else if (fs_Pos.y < 5.05f){
     out_Col = vec4(0.f, 0.f, 0.f, 1.f);
   } else if (fs_Pos.y < 5.5f) {
     colorA = vec3(212.f/255.f, 241.f/255.f, 182.f/255.f);
     colorB = vec3(102.f/255.f, 197.f/255.f, 256.f/255.f);
     out_Col = vec4(mix(colorA, colorB, fs_Pos.y / 7.f), 1.f);
   } else if (fs_Pos.y < 5.55f){
     out_Col = vec4(0.f, 0.f, 0.f, 1.f);
   }  else if (fs_Pos.y < 6.0f) {
     colorA = vec3(252.f/255.f, 121.f/255.f, 228.f/255.f);
     colorB = vec3(252.f/255.f, 256.f/255.f, 104.f/255.f);
     out_Col = vec4(mix(colorA, colorB, t), 01.f);
   } else if (fs_Pos.y < 6.05f){
     out_Col = vec4(0.f, 0.f, 0.f, 1.f);
   }
   else {
     colorA = vec3(255.f/255.f, 171.f/255.f, 195.f/255.f);
     colorB = vec3(255.f/255.f, 211.f/255.f, 245.f/255.f);
   // Mix uses pct (a value from 0-1) to
   // mix the two colors
   out_Col = vec4(mix(colorA, colorB, t), 1.f);
   //wwout_Col = vec4(mix(colorA, colorB, fs_Pos.y), 1.f);
 }
} else if (fs_Pos.x + u_PlanePos.x < 350.f) {

//------------- item 2-----------------------------
float t = clamp(smoothstep(0.0, 5.0, fs_Pos.y), 0.0, 1.0); // Distance fog
if (fs_Sine < 0.2f){
colorA = vec3(126.f/255.f, 221.f/255.f, 228.f/255.f);
colorB = vec3(123.f/255.f, 221.f/255.f, 228.f/255.f);
out_Col = vec4(mix(colorA, colorB, fs_Sine), 1.f);
} else {
colorA = vec3(14.f/255.f, 105.f/255.f, 205.f/255.f);
colorB = vec3(0.f/255.f, 34.f/255.f, 83.f/255.f);
out_Col = vec4(mix(colorA, colorB, fs_Sine / 9.f), 1.f);
// use these
 colorA = vec3(255.f/255.f, 246.f/255.f, 211.f/255.f);
 colorB = vec3(229.f/255.f, 208.f/255.f, 132.f/255.f);
 out_Col = vec4(mix(colorA, colorB, fs_Sine * 2.f), 1.f);

 if (random1(vec2(fs_Sine, fs_Nor.x), vec2(fs_Sine, 4.5f)) < 0.007f){
   out_Col = vec4(1.f, 0.f, 0.f, 1.f);
 } else if (random1(vec2(fs_Sine, fs_Nor.x), vec2(fs_Sine, fs_Sine)) < 0.008f){
   out_Col = vec4(0.f, 1.f, 0.f, 1.f);
 } else if (random1(vec2(fs_Sine, fs_Nor.y), vec2(2.3f, fs_Sine)) < 0.01f){
   out_Col = vec4(.1f, .2f, 0.f, 1.f);
 }
}


} else  {

  colorA = vec3(255.f/255.f, 246.f/255.f, 211.f/255.f);
  colorB = vec3(209.f/255.f, 188.f/255.f, 112.f/255.f);
  out_Col = vec4(mix(colorA, colorB, fs_Sine), 1.f);

  if (fs_Sine < 0.5f){
    colorA = vec3(126.f/255.f, 221.f/255.f, 228.f/255.f);
    colorB = vec3(123.f/255.f, 221.f/255.f, 228.f/255.f);
    out_Col = vec4(mix(colorA, colorB, fs_Sine), 1.f);

  }

}



}
