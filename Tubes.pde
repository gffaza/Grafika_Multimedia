// Constants
int Y_AXIS = 1;
int X_AXIS = 2;
color b1, b2, c1, c2;
//scene1
int x=0;
int x1=0;
int t=1;
float s=1.00;

void setup() {
  size(1024, 768);
  // Define colors
  c1 = color(62, 197, 254);
  c2 = color(255);
  frameRate(50);  
  noStroke();
  //noLoop();  
}

void draw() {
  scene1();
  
  
}
void scene1(){
  setGradient(0, 0, 1024, 768, c1, c2, Y_AXIS);  
    matahari();
  if(x<width-1){
      x=x+1;
      awan();
    }
    gedung3();
    gedung2();
    gedung1();
}

void matahari(){
  noStroke();
  fill(125,216,245);
  ellipse(661,140,175,175);
  fill(158,226,230);
  ellipse(661,140,150,150);
  fill(205,239,206);
  ellipse(661,140,125,125);
  fill(255,255,183);
  ellipse(661,140,100,100);
}

void awan(){
  fill(188,239,253);
  ellipse(x-26,233,80,50);
  ellipse(x-26,165,100,100);
  ellipse(x+47,183,81,71);
  ellipse(x+51,205,129,71);
  ellipse(x+189,65,100,63);
  ellipse(x+230,19,100,100);
  ellipse(x+271,65,100,63);
  ellipse(x+330,74,100,45);
  ellipse(x+512,246,80,80);
  ellipse(x+490,286,80,50);
  ellipse(x+547,286,80,50);
  ellipse(x+867,143,100,41);
  ellipse(x+901,133,75,75);
  ellipse(x+940,114,100,100);
  ellipse(x+981,144,100,53);
  
  fill(188,239,253);
  ellipse(x+26,233,80,50);
  ellipse(x+26,165,100,100);
  ellipse(x-47,183,81,71);
  ellipse(x-51,205,129,71);
  ellipse(x-189,65,100,63);
  ellipse(x-230,19,100,100);
  ellipse(x-271,65,100,63);
  ellipse(x-330,74,100,45);
  ellipse(x-512,246,80,80);
  ellipse(x-490,286,80,50);
  ellipse(x-547,286,80,50);
  ellipse(x-867,143,100,41);
  ellipse(x-901,133,75,75);
  ellipse(x-940,114,100,100);
  ellipse(x-981,144,100,53);
}

void gedung1(){
  fill(52,163,234);
  rect(0, 668, 1024, 100);
  rect(0,613,100,55);
  rect(25,593,75,32);
  rect(150,543,100,125);
  rect(304,613,125,55);
  rect(371,593,58,25);
  rect(313,558,58,55);
  rect(511,618,77,55);
  rect(608,593,75,75);
  rect(608,518,38,75);
  rect(622,488,10,30);
  rect(725,638,100,30);
  rect(737,538,75,100);
  rect(825,593,50,75);
  rect(924,593,100,75);
  rect(949,563,75,30);  
}

void gedung2(){
  fill(62,197,254);
  rect(0,568,1024,100);
  rect(50,513,100,55);
  rect(75,458,50,55);
  ellipse(100,455,45,45);
  rect(209,488,100,82);
  rect(239,443,70,45);
  rect(354,323,100,245);
  rect(379,268,50,55);
  rect(399,218,10,50);
  rect(505,508,127,60);
  rect(511,458,50,50);
  rect(569,485,49,23);
  rect(707,454,43,114);
  rect(750,504,25,64);
  rect(775,448,250,120);
  rect(785,348,120,100);
  rect(974,419,50,29);
  rect(801,293,104,55);  
}

void gedung3(){
  fill(122,224,255);
  rect(0,468,1024,100);
  rect(0,418,50,50);
  rect(100,358,100,110);
  rect(100,323,70,35);
  rect(230,413,100,55);
  rect(245,358,70,55);
  ellipse(280,347,61,61);
  rect(430,436,70,35);
  rect(559,433,70,35);
  rect(572,398,40,35);
  rect(588,368,10,30);
  rect(677,433,100,35);
  rect(687,413,65,20);
  rect(926,428,48,20);
  rect(959,408,45,20);
  
}

void setGradient(int x, int y, float w, float h, color c1, color c2, int axis ) {

  noFill();

  if (axis == Y_AXIS) {  // Top to bottom gradient
    for (int i = y; i <= y+h; i++) {
      float inter = map(i, y, y+h, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(x, i, x+w, i);
    }
  }  
  else if (axis == X_AXIS) {  // Left to right gradient
    for (int i = x; i <= x+w; i++) {
      float inter = map(i, x, x+w, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(i, y, i, y+h);
    }
  }
}
