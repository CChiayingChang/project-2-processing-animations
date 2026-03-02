int counter, angle, distance, direction;

void setup () {
  size (300, 300);
  counter=0;
  angle=0;
  direction=1;
  distance=0;
}

void draw () {
  counter=counter+5;
  if (counter<50) {
    background (225);
    fill (0);
    ellipse (150, 150, 90, 60);
  }
  if (counter>50) {
    background (225);
    fill (0);
    ellipse (150, 150, 75, 75);
  }
  
  if (counter==100) {
    counter=0;
  }
  planet (150, 150);
  angle=angle+5;
  distance=distance+direction;
  if (distance>10) {
    direction=-1;
  }
  if (distance<2); {
    direction=1;
  }
}

void planet (int x, int y) {
  pushMatrix ();
    translate (x, y);
    rotate(radians(angle));
    ellipse (distance, 0, 50, 50);
  popMatrix ();
}
