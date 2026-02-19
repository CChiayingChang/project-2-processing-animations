int x, y; //variable
void setup () {//setup stuff before the animation
  size (300, 300);
  x=0;
  y=0;
}

void draw () { //this stuff will loop over and over again, 60 frames per sec
  background (0); //without a background, the circle will be redrawn over and over again as it moves and will leave behind a tube, backgroudn covers old circles
  //fill (0); //don't forget, this fill will spill over to next redraw
  //circle (x, 150, 50); //x, y, diameter
  y=y+1; //changes variable;
  //if (x>300) { //if you want circle to go completely off screen, make this number bigger; x coordinate for center of circle
    //x=-50; //make this number less than 0 bc coordinates for circle is center
  //}
  //strokeWeight (mouseY);
  //background (mouseX, 255, mouseY); //as the pointer moves horizontally, the colour will change; mouseX will correspond to the x coordinate of pointer, and mouseY with the y coordinate
  ellipse (mouseX, mouseY, 50, 70); //xy coordinates of shape will follow your pointer
  fill (225, 0, 0);
  //ellipse (150, 150, mouseX, mouseY); //w and h will change as pointer moves
  fill (225, mouseY, mouseX);
  ellipse (150, 150, 200, y);
  if (y>50) {
    y=0;
  }
  
  line (150, 150, mouseX, mouseY);
}

//can also use variables to slowly change colour of things
