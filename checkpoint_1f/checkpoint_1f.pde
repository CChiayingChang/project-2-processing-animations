int yL, yR, x;

void setup () {
  size (200, 200);
  yL=200;
  yR=0;
  x=0;
}

void draw () {
  background (0);
  fill (85, 208, x);
  circle (50, yL, 50);
  fill (x, 72, 255);
  circle (150, yR, 50);
  yL=yL-1;
  yR=yR+1;
  x=x+2;
  if (yR>250) {
    yR=-50;
    x=0;
  }
  if (yL<-50) {
    yL=250;
  }
}
