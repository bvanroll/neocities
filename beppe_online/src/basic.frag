precision mediump float;

uniform float u_time;

void main() {
  float r = sin(u_time * .0003);
  float g = sin(u_time*.0005);
  float b = sin(u_time*.0007);
  gl_fragColor = vec4(r,g,b,1.);
}
