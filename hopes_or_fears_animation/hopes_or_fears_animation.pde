//hope: getting a house in the future

int keyY, keyX;
int angle;

void setup () {
  size (600, 600);
  keyY=100;
  keyX=300;
  
}

void draw () {
  background (0);
  //key (keyX, keyY, angle);
  keyY=keyY+5;
  if (keyY>300) {
    angle=angle+5;
    keyX=keyX+4;
  }
  //hand (200, 500);
  if (angle>90) {
    angle=90;
    keyY=450;
    keyX=375;
    delay (1000);
    background (126, 219, 227);
  }
  println (mouseX-200, mouseY-500);
}

void key (int x, int y, int angle) {
  pushMatrix ();
    translate (x, y);
    rotate(radians(angle));
    fill (232, 186, 35);
    rect (0, 0, 80, 60); //head of key
    fill (0);
    stroke (232, 186, 35);
    strokeWeight (8);
    quad (10, 0, 70, 0, 60, -15, 20, -15); //handle part on top of key
    rect (20, 60, 40, 5);//small rectanlge directly under head of key
    strokeWeight (1);
    fill (232, 186, 35);
    quad (38, 65, 55, 65, 55, 190, 38, 200); //right side of the long part of key, start top left corner and go clockwise
    quad (25, 65, 25, 100, 40, 120, 40, 65); //top part of left side of key stick
    quad (40, 120, 40, 160, 30, 150, 30, 130); //middle part of left side of key stick
    quad (40, 160, 30, 170, 30, 190, 40, 200); //bottom part of left side of key stick
  popMatrix ();
}

void hand (int x, int y) {
  pushMatrix ();
  translate (x, y);
  fill (224, 185, 158);
  stroke (224, 185, 158);
  ellipse (0, -5, 150, 85); //thumb bone thing
  quad (-75, -25, 170, -25, 145, 50, -55, 35); //palm
  quad (-200, -20, -35, -30, -55, 35, -200, 80); //arm
  quad (170, -25, 145, 50, 300, -85, 280, -85); //fingers
  //triangle (45, -30, 73, -26, 150, -25); //thumb
  popMatrix ();
}

void house () {
  
}
