int monsterX;
int monsterangle;

color red=#FF0000;

void setup () {
  size (700, 700);
  monsterX=0;
}

void draw () {
  background (225);
  monster (monsterX, 350, monsterangle);
  println (mouseX-350, mouseY-350);
 monsterX=monsterX+5;
  if (monsterX>900) {
    monsterX=-200;
  }
  monsterangle=monsterangle+2;
}

void monster (int x, int y, int angle) {
  pushMatrix ();
  
    translate (x, y);
    
    rotate(radians(angle));
    
    //main body (torso)
    stroke (0);
    strokeWeight (20);
    fill (0);
    triangle (-100, -100, 100, -100, 0, 100);
    
    //legs
    strokeWeight (20);
    line (-35, 45, -140, 130); //top left
    line (40, 45, 145, 130);//top right
    strokeWeight (5);
    triangle (-147, 130, -135, 130, -140, 250); //bottom left
    triangle (152, 130, 140, 130, 145, 250); //bottom right
    
    //head
    strokeWeight (2);
    stroke (225);
    circle (0, -150, 100);
    //eyes
    fill (red);
    arc (-25, -150, 25, 25, 0, PI); //left eye
    arc (25, -150, 25, 25, 0, PI); //right eye
    
    //arms
    stroke (0);
    strokeWeight (10);
    line (-100, -100, -100, 150); //left arm
    line (100, -100, 100, 150); //right arm
  
  popMatrix ();
}
