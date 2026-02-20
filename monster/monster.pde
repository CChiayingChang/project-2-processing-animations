int monsterX;

color red=#FF0000;

void setup () {
  size (700, 700);
  monsterX=0;
}

void draw () {
  background (225);
  monster (350, 350, 45);
  println (mouseX-350, mouseY-350);
}

void monster (int x, int y, int angle) {
  pushMatrix ();
  
    translate (x, y);
    
    //main body
    fill (0);
    triangle (-100, -100, 100, -100, 0, 100);
    
    //legs
    strokeWeight (50);
    line (-55, 45, -140, 130);
    strokeWeight (40);
    line (-145, 130, -145, 250);
    line (
  
  popMatrix ();
}
