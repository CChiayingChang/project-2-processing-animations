//hope: getting a house in the future

int keyY, keyX, keyangle, redcarX, blackcarX, wingcounter, wingangle, birdX, wingX;

void setup () {
  size (600, 600);
  keyY=100;
  keyX=300;
  redcarX=0;
  blackcarX=0;
  wingcounter=0;
  birdX=590;
  wingangle=0;
  wingX=585;
}

void draw () {
  background (0);
  
  key (keyX, keyY, keyangle);
  keyY=keyY+5;
  if (keyY>300) {
    keyangle=keyangle+5;
    keyX=keyX+4;
  }
  
  hand (200, 500);
  if (keyangle>90) {
    keyangle=90;
    keyY=450;
    keyX=375;
    //delay (1000);
    background (126, 219, 227);
    
    house (100, 200);
    
    fill (157, 156, 156);
    rect (0, 475, 600, 125); //road
    fill (225);
    rect (15, 525, 50, 15); //white lines on road
    rect (115, 525, 50, 15);
    rect (215, 525, 50, 15);
    rect (315, 525, 50, 15);
    rect (415, 525, 50, 15);
    rect (515, 525, 50, 15);
    
    bush (85, 425);
    bush (470, 425);
    
    blackcar (blackcarX, 415);
    blackcarX=blackcarX+9;
    if (blackcarX>650) {
      blackcarX=-50;
    }
    
    redcar (redcarX, 475);
    redcarX=redcarX+10;
    if (redcarX>650) {
      redcarX=-50;
    }
    
    bird (birdX, 100);
    birdX=birdX-5;
    if (birdX>610) {
      birdX=610;
    }
    wing (wingX, 90, wingangle);
    wingX=wingX-5;
    wingcounter=wingcounter+5;
    if (wingX>615) {
      wingX=605;
    }
    if (wingcounter<50) {
      wingangle=0;
    }
    if (wingcounter>50) {
      wingangle=-90;
    }
    if (wingcounter==100) {
      wingcounter=0;
    }
  }
  
  
  println (mouseX-100, mouseY);
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

void redcar (int x, int y) {
 pushMatrix ();
 translate (x, y);
   scale (0.7);
   fill (225, 0, 0);
   rect (0, 0, 200, 100, 45);//the top of the car the last argument is for the roundness of the corners, can also do individually
   fill (186, 221, 224);
   rect (140, 10, 50, 50, 0, 200, 0, 0); //window
   fill (225, 0, 0);
   rect (-25, 50, 300, 85, 50, 50, 20, 20); //the bottom of the car
   fill (0);
   circle (30, 130, 75); //left wheel
   circle (185, 130, 75); //right wheel
   rect (-40, 105, 15, 20); //exhaust pipe
   fill (162, 162, 162);
   circle (30, 130, 40); //middle of left wheel
   circle (185, 130, 40); //middle of right wheel
 popMatrix ();
}

void blackcar (int x, int y) {
 pushMatrix ();
 translate (x, y);
   scale (0.6);
   fill (0);
   stroke (155, 155, 155);
   rect (0, 0, 200, 100, 45);//the top of the car the last argument is for the roundness of the corners, can also do individually
   fill (186, 221, 224);
   rect (140, 10, 50, 50, 0, 200, 0, 0); //window
   fill (0);
   stroke (155, 155, 155);
   rect (-25, 50, 300, 85, 50, 50, 20, 20); //the bottom of the car
   fill (0);
   rect (-40, 105, 15, 20); //exhaust pipe
   stroke (155, 155, 155);
   circle (30, 130, 75); //left wheel
   circle (185, 130, 75); //right wheel
   fill (162, 162, 162);
   circle (30, 130, 40); //middle of left wheel
   circle (185, 130, 40); //middle of right wheel
 popMatrix ();
}

void house (int x, int y) {
  pushMatrix ();
    translate (x, y);
    stroke (0);
    fill (225);
    rect (0, 0, 400, 275);
    fill (111, 64, 6);
    triangle (-75, 50, 200, -150, 475, 50);
  popMatrix ();
}

void bush (int x, int y) {
  pushMatrix ();
    translate (x, y);
    fill (84, 167, 68);
    stroke (84, 167, 68);
    circle (0, 0, 100);
    circle (-50, 5, 90);
    circle (50, 15, 110);
    circle (-15 ,25, 105);
  popMatrix ();
}

void bird (int x, int y) {
  pushMatrix ();
    translate (x, y);
    circle (-20, -20, 25);
    rotate(QUARTER_PI);
    ellipse (0, 0, 55, 30);
  popMatrix ();
}

void wing (int x, int y, int angle) {
  pushMatrix ();
    translate (x, y);
    rotate(radians(angle));
    fill (0);
    arc (22, 0, 40, 35, 0, PI);
  popMatrix ();
}
