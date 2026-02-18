int x, y, z;

void setup () {
  size (200, 200);
  x=0;
  y=0;
}

void draw () {
  background (0, 0, z);
  circle (x, y, 50);
  x=x+1;
  y=y+1;
  z=z+1;
  if (x>250) {
    x=-50;
  }
  if (y>250) {
    y=-50;
  }
  if (z>225) {
    z=0;
  }
}
