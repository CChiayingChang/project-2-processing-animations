//hope: getting a house in the future
//a key falls into a hand; i just bought a new house, being given the key to it. Then switches to a scene of a house: i have my own house

int keyY, keyX, keyangle, redcarX, blackcarX, wingcounter, wingangle, birdX, wingX, wheelangleR, wheelangleB, sky, skycounter, skycounter2;
int smokeY, smokex1, smokex2, smokev1, smokev2, smokecounter;

void setup () {
  size (600, 600);
  keyY=100;
  keyX=300;
  redcarX=0;
  blackcarX=600;
  wingcounter=0;
  birdX=10;
  wingangle=0;
  wingX=15;
  wheelangleR=0;
  wheelangleB=0;
  sky=0;
  skycounter=-1;
  skycounter2=0;
  smokeY=125;
  smokev1=-1;
  smokev2=1;
  smokecounter=0;
}

void draw () {
  background (0);
  
  key (keyX, keyY, keyangle);
  keyY=keyY+8; //key falls into hand
  if (keyY>290) {
    keyangle=keyangle+5;
    keyX=keyX+4;
  }
  
  hand (200, 500);
  if (keyangle>90) {//when key falls into the palm, starts the next scene
    keyangle=90;
    keyY=450;
    keyX=375;
    
    background (92+sky, 211+sky, 240+sky);
    circle (50, 50, 2);
    sky=sky+skycounter;
    skycounter2=skycounter2+1;
    if (skycounter2<300) {//makes the sky darken
      skycounter=-1;
    }
    if (skycounter2>300 && skycounter2<600) {//makes the sky lighten
      skycounter=1;
   }
    if (skycounter2>600 && skycounter2<900) {//keeps the sky at a light blue for short time
      skycounter=0;
    }
    if (skycounter2==900) {//resets counter and makes sure sky will darken again
      skycounter2=0;
      skycounter=-1;
    }

    smoke (450+smokex1, -32+smokeY); //the chimney smoke
    smoke (430+smokex2, -27+smokeY);
    smoke (450+smokex1, 11+smokeY);
    smoke (430+smokex2, 34+smokeY);
    smoke (450+smokex1, 75+smokeY);
    smoke (430+smokex2, 100+smokeY);
    smoke (450+smokex1, 125+smokeY);
    smoke (430+smokex2, 170+smokeY);
    smoke (450+smokex1, 175+smokeY);
    smoke (430+smokex2, 215+smokeY);
    smoke (450+smokex2, 250+smokeY);
    smoke (430+smokex2, 375+smokeY);
    smoke (450+smokex1, 400+smokeY);
    smoke (430+smokex2, 415+smokeY);
    smoke (450+smokex1, 450+smokeY);
    smoke (450+smokex1, 475+smokeY);
    smoke (430+smokex2, 480+smokeY);
    smoke (450+smokex1, 520+smokeY);
    smoke (430+smokex2, 550+smokeY);
    smokeY=smokeY-2;
    if (smokeY<-180) {
      smokeY=0;
    }
    smokex1=smokex1+smokev1; //this stuff makes the smoke bounce sideways
    smokex2=smokex2+smokev2;
    smokecounter=smokecounter+1;
    if (smokecounter<15) {
      smokev1=-1;
      smokev2=1;
    }
    if (smokecounter>15) {
      smokev1=1;
      smokev2=-1;
    }
    if (smokecounter==30) {
      smokecounter=0;
    }
    
    house (100, 200);
    
    fill (157, 156, 156);
    strokeWeight (1);
    stroke (0);
    rect (0, 475, 600, 125); //road
    fill (252, 194, 33);
    rect (0, 525, 600, 8); //yellow line on road
    
    bush (85, 425);
    bush (470, 425);
    bush (20, 425);
    bush (550, 425);
    
    blackcar (blackcarX, 415);
    blackcarX=blackcarX-15;
    if (blackcarX<-50) {
      blackcarX=650;
    }
    redcar (redcarX, 475);
    redcarX=redcarX+20;
    if (redcarX>650) {
      redcarX=-50;
    }
    wheelangleR=wheelangleR+15;
    wheelangleB=wheelangleB-15;
    
    bird (birdX, 100, 80);
    birdX=birdX+5;
    if (birdX>700) {
      birdX=-100;
    }
    wing (wingX, 105, wingangle); //for making the wing flap
    wingX=wingX+5;
    wingcounter=wingcounter+5;
    if (wingX>705) {
      wingX=-95;
    }
    if (wingcounter<50) {
      wingangle=0;
    }
    if (wingcounter>50) {
      wingangle=90;
    }
    if (wingcounter==100) {
      wingcounter=0;
    }
  }
  
  
  println (mouseX, mouseY-475);
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
  popMatrix ();
}

void redcar (int x, int y) {
 pushMatrix ();
 translate (x, y);
   scale (0.7);
   fill (225, 0, 0);
   strokeWeight (2);
   stroke (0);
   rect (0, 0, 200, 100, 45);//the top of the car the last argument is for the roundness of the corners, can also do individually
   fill (186, 221, 224);
   rect (140, 10, 50, 50, 0, 200, 0, 0); //window
   fill (225, 0, 0);
   rect (-25, 50, 300, 85, 50, 50, 20, 20); //the bottom of the car
   fill (0);
   rect (-40, 105, 15, 20); //exhaust pipe
   wheel (30, 130, wheelangleR);
   wheel (185, 130, wheelangleR);
   strokeWeight (1); //headlights
   stroke (0);
   fill (237, 213, 72);
   circle (245, 80, 55);
   stroke (225, 0, 0);
   strokeWeight (2);
   fill (225, 0, 0);
   arc (245, 80, 55, 55, 0, PI+HALF_PI);
   fill (237, 213, 72, 75); //the beams of light
   noStroke ();
   triangle (380, 40, 240, 70, 380, 90);
 popMatrix ();
}

void blackcar (int x, int y) {
 pushMatrix ();
 translate (x, y);
   scale (0.6);
   fill (0);
   strokeWeight (1);
   stroke (155, 155, 155);
   rect (0, 0, 200, 100, 45);//the top of the car the last argument is for the roundness of the corners, can also do individually
   fill (186, 221, 224);
   rect (10, 10, 50, 50, 200, 0, 0, 0); //window
   fill (0);
   stroke (155, 155, 155);
   rect (-75, 50, 300, 85, 50, 50, 20, 20); //the bottom of the car
   fill (0);
   rect (225, 105, 15, 20); //exhaust pipe
   stroke (155, 155, 155);
   fill (162, 162, 162);
   wheel (15, 130, wheelangleB);
   wheel (170, 130, wheelangleB);
   strokeWeight (1); //headlights
   stroke (0);
   fill (237, 213, 72);
   arc (-45, 80, 55, 55, PI, PI+HALF_PI);
   fill (237, 213, 72, 75); //the beams of light
   noStroke ();
   triangle (-180, 40, -40, 70, -180, 90);
 popMatrix ();
}

void wheel (int x, int y, int angle) {
  pushMatrix ();
    translate (x, y);
    rotate (radians(angle));
    fill (0);
    stroke (162);
    circle (0, 0, 80); //main wheel
    fill (162, 162, 162);
    circle (0, 0, 50); //grey circle
    fill (0);
    circle (0, 0, 40); //center black circle
    fill (162, 162, 162);
    stroke (162, 162, 162);
    rect (-20, -1.5, 40, 3); //lines on wheel
    rect (-1.5, -20, 3, 40);
  popMatrix ();
}

void house (int x, int y) {
  pushMatrix ();
    translate (x, y);
    strokeWeight (1);
    stroke (0);
    fill (225);
    rect (0, 0, 400, 275); //main house
    fill (111, 64, 6);
    rect (300, -100, 90, 100); //chimney
    triangle (-75, 50, 200, -150, 475, 50); //roof
    rect (162, 165, 76, 110); //door
    fill (250, 199, 58);
    circle (225, 225, 15); //door knob
    fill (166, 196, 203);
    stroke (111, 64, 6);
    strokeWeight (10);
    rect (42, 100, 80, 90);
    rect (275, 100, 80, 90);
  popMatrix ();
}

void bush (int x, int y) {
  pushMatrix ();
    translate (x, y);
    fill (84, 167, 68);
    stroke (84, 167, 60);
    circle (0, 0, 85);
    circle (-50, 5, 70);
    circle (50, 15, 92);
    circle (-15 ,25, 100);
  popMatrix ();
}

void bird (int x, int y, int angle) {
  pushMatrix ();
    translate (x, y);
    rotate (radians(angle));
    fill (167);
    stroke (167);
    strokeWeight (1);
    ellipse (5, -20, 25, 30); //head
    ellipse (10, 10, 30, 55); //body
    triangle (10, 30, -7, 60, 17, 60); //tail
    fill (240, 206, 36);
    triangle (2, -35, 12, -32, 10, -45); //beak
    fill (0);
    circle (3, -27, 7); //eye
  popMatrix ();
}

void wing (int x, int y, int angle) {
  pushMatrix ();
    translate (x, y);
    rotate(radians(angle));
    fill (0);
    arc (-22, 0, 40, 35, 0, PI);
  popMatrix ();
}
void smoke (int x, int y) {
  pushMatrix ();
    translate (x, y);
    fill (200, 75);
    noStroke ();
    circle (0, 0, 60);
  popMatrix ();
}
