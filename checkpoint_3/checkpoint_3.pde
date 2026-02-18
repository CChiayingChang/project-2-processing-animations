int x=0;

void setup () {
  size (200, 200);
}

void draw () {
  background (mouseX, mouseY, 200);
  circle (100, 100, x);
  x=x+1;
  if (x>300) {
    x=0;
  }
}
