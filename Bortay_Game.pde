int xpos = 220;
int ypos = 220;
int directionX = 2;
int directionY = 4;

int moveFacX = 6;
int moveFacY = 2;

int radius = 55;

int startTime;
int finishTime =100;


PShape monster;
int w = 220;
int h = 70; 
int x;
int y;

boolean scene1 = true; 
boolean scene2 = false; 
boolean scene3 = false; 
boolean scene4 = false; 

boolean isMouseOverStartBtn = false;
void setup() {
  size(640, 640);
}


void draw() {
  background(0,255,0);
  noStroke();

  if (scene1 == true) {

    if (mouseX > 0 && mouseX < 100 && mouseY > 0 && mouseY < 30) {
      fill(112,22,25);
      isMouseOverStartBtn = true;
    } else {
      fill(140);
      isMouseOverStartBtn = false;
    }
    noStroke();

    rect(0, 0, 100, 40);
    fill(255);
    text("START GAME", 50 - textWidth("START GAME") *0.5, 20);
  }

  
  if (scene2 == true) { 
      
    if (xpos > width - radius * 0.5) {
      directionX = -1;
    } 

    if (xpos < radius * 0.5) {
      directionX = 1;
    }

    if (ypos > height - radius * 0.5) {
      directionY = -1;
  
    } 

    if (ypos < radius * 0.5) {
      directionY = 1;
    }

    xpos += moveFacX * directionX;
    ypos += moveFacY * directionY;

    fill(255, 0, 0);
 
    ellipse(xpos, ypos, radius, radius);

    fill(0, 0, 180);
    
    if(mouseX+w > xpos - radius * 0.5 && 
    mouseX < xpos + radius * 0.5 &&
    mouseY+h > ypos - radius * 0.5 &&
    mouseY < ypos + radius * 0.5) {
      println("touch");
      scene2 =false;
  }
    
  }

  if(scene3 == true) {    
  }
}

void mousePressed() {
  if (isMouseOverStartBtn) {
    
    scene1 = true;
    scene2 = true;
  }
}