//hope: getting a house in the future

int shapeY;
int angle;

void setup () {
  size (600, 600);
  shapeY=200;
}

void draw () {
  background (0);
  key (300, shapeY, angle);
  //shapeX=shapeX+1;
  //if (shapeX>200) {
    //angle=90;
  //}
  println (mouseX-300, mouseY-200);
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
    quad (40, 65, 55, 65, 55, 190, 40, 200); //right side of the long part of key, start top left corner and go clockwise
    quad (
  popMatrix ();
}
