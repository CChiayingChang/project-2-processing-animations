int x, y, vx, vy, colour; //vx is velocity x (what direction the x is gong), vy same for ys
int counter;
int BC;
color purple=#8C53EA;
color blue=#3DBAF2;
color pink=#F079E4;
color orange=#FC7C2B;

void setup () {
  size (500, 300);
  x=100;
  y=200;
  vx=4;
  vy=4;
  colour=purple;
  counter=0;
}

void draw () {
  background (0);
  
  fill (colour);
  shape (x, y);
  x=x+vx;
  y=y+vy;
  if (x>475) {
    vx=-4;
    colour=blue;
  }
  if (x<25) {
    vx=4;
    colour=pink;
  }
  if (y>275) {
    vy=-4;
    colour=orange;
  }
  if (y<25) {
    vy=4;
    colour=purple;
  }
}
  

void shape (int x, int y) {
  pushMatrix ();
  
  translate (x, y);
  
  circle (0, 0, 50);
  
  popMatrix ();
}
