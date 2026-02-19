void setup () {
  size (600, 600);
}

void draw () {
  background (0);
  shape ();
}

void shape () {
 //ranslate (200, 300); //x, y; this moves the origin to the point in the brackets
  
  circle (0, 0, 150);
  
  rect (0, 0, 100, 50);
  
  rect (-50, 0, 50, 100);
  
  rect (-100, -50, 100, 50);
  
  rect (0, -100, 50, 100);
  
  circle (0, 0, 50);
}
