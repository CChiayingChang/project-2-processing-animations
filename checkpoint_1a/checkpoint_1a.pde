int y=0; //int stands for integer

void setup () {
  size (200, 200);
}

void draw () {
  background (0);
  fill (225, mouseX, mouseY);
  circle (100, y, 75);
  y=y+1;
  if ( y > 250) {
    y= -50;
  }
}
