float rotx, roty;

void setup() {
  size(800, 800, P3D);
}

void draw() {
  background(255);

  ball(width/2, height/2, 0, #FF0000, 100);
  

  ball(100, 100, 0, #0000FF, 100);
  ball(700, 700, 0, #0000FF, 100);
  cube(700, 100, 0, #FF0000, 100);
  cube(100, 700, 0, #FF0000, 100);
}

void ball(float x, float y, float z, color c, float size) {
  pushMatrix();
  translate(x, y, z);

  rotateX(rotx);
  rotateY(roty);

  fill(c);
  strokeWeight(1);
  sphere(size);
  popMatrix();
}

void cube(float x, float y, float z, color c, float size) {
  pushMatrix();
  translate(x, y, z);

  rotateX(rotx);
  rotateY(roty);
  //rotateZ();

  fill(c);
  stroke(0);
  strokeWeight(1);
  box(size); //Width, Height, Depth   size becomes the length of the cube
  popMatrix();
}

void mouseDragged() {
  rotx = rotx + (pmouseY - mouseY)*0.01;
  roty = roty + (pmouseX - mouseX)*-0.01;
}
