int x, r, g;

void setup () {
  size (200, 200);
  x=0;
  r=0;
  g=0;
}

void draw () {
  background (0);
  fill (0, g, 200);
  circle (x, 100, r);
  x=x+3;
  r=r+1;
  g=g+5;
  if (x>250) {
    x=0;
    r=0;
    g=0;
  }
}
