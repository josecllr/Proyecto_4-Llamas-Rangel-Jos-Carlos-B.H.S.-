class Circle {
  float x,y; // location
  float dim; // dimension
  float c; // color
  float angle;
 
  Circle(float x, float y,float dim, float angle, float c) {
    this.x = x;
    this.y = y;
    this.dim = dim;
    this.angle=angle;
    this.c =c;
  }
 
  void display() {
    pushMatrix();
  translate(mouseX, mouseY);
  rotate(radians(angle));
  fill(c,0,0);
    ellipse(x, y,dim*cos(dim),dim *cos(dim));
    popMatrix();
  }
}