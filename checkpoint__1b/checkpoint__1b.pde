int x=200;

void setup () {
  size (200, 200);
}

void draw () {
  background (225);
  fill(0);
  circle (x, 100, 50);
  x=x-1;
  if (x<-50) {
    x=250;
  }
}
