//import ddf.minim.*;
import processing.sound.*;
// Constants
int Y_AXIS = 1;
int X_AXIS = 2;
color  c1, c2;
//Animasi awan scene1
int x=0;
//Animasi awan scene2
float x2=0;
//Animasi awan scene3
float x3=0;
//Animasi awan scene 5
float x5=0;
//Animasi awan scene 6
float x6=0;
//Animasi awan scene 7
float x7=0;
//Transisi
int t=1;
float s=1.00;
int bg = -120;
//Timer
int detik;
//Animasi abdul Scene 2
int xMove = 0;
PImage img;
SoundFile file;
//AudioSnippet sound;
//Minim minim;

void setup() {
 
  
  size(1024, 768);
  // Define colors
  c1 = color(62, 197, 254);
  c2 = color(255);
  img = loadImage("kaligrafi.png");
  frameRate(50);  
  noStroke();
  //noLoop();  
  
}

void draw() {
  detik = millis() / 1000;
  //minim = new Minim(this);
  //sound = minim.loadSnippet("Sound Tubes.mp3");

  System.out.println(detik);
  sound();
  int plus = 9+9;
  int plus2 = 12+9;
  if(detik > 0+plus && detik <= 15+plus) {
    scene1();
  } else if(detik > 16+plus2 && detik <= 17+plus2) {
    transisi();
  } else if(detik > 18+plus2 && detik <= 33+plus2) {
    scene2();
  } else if(detik > 34+plus2 && detik <= 35+plus2) {
    transisi();
  } else if(detik > 36+plus2 && detik <= 55+plus2) {
    scene3();
  } else if(detik > 56+plus2 && detik <= 57+plus2) {
    transisi();
  } else if(detik > 58+plus2 && detik <= 78+plus2) {
    scene4();
  } else if(detik > 79+plus2 && detik <= 80+plus2) {
    transisi();
  } else if(detik > 81+plus2 && detik <= 95+plus2) {
    scene5();
  } else if(detik > 97+plus2 && detik <= 115+plus2) {
    scene6();
  } else if(detik > 116+plus2 && detik <= 165+plus2) {
    scene7();
  } else if(detik > 166+plus2 && detik <= 167+plus2) {
    transisi();
  } else if(detik > 168+plus2 && detik <= 183+plus2) {
    scene8();
  } else if(detik > 184+plus2 && detik <=196+plus2) {
    scene9();
  } else if(detik > 187+plus2 && detik <= 188+plus2) {
    transisi();
  } else if(detik > 188+plus2 && detik <= 180+55+plus2) {
    scene10();
  }
  
  
  
  
  //disini
  //transisi();
  //scene1();
  //scene2();
  //scene3();
  //scene4();
  //scene5();
  //scene6();
  //scene7();
  //scene8();
  //scene9();
  //scene10();
}

void sound() {
  int detik2 = millis()/1000;
   if(detik2 == 1){
    file = new SoundFile(this, "Sound Tubes V4.mp3");
    file.play();
  }
  println("detik2 = " + detik2);
}

void transisi(){
  translate(width/2,height/2);
   pushMatrix();
    scale(s);
    strokeWeight(0);
    fill(62,197,254);
    ellipse(0,0,100,100);
  popMatrix();
  if(s>=0.1){
    s=s+0.3;
  }
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
    tulisan();
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

void tulisan() {
  fill(255);
  textSize(72);
  text("Menatap Langit", 259,342+84);
}

//-------------------------------------SCENE 2----------------------------------------

void scene2() {
  setGradient(0, 0, 1024, 768, c1, c2, Y_AXIS);
  if(x2<width-1){
      x2 = x2 + 0.3;
      awan2();
    }
  rumah();
  jalan();
  kanjengNani();
  abdul2();
}

void rumah(){
  
  //tembok
  fill(249,243,212);
  stroke(0);
  strokeWeight(2);
  rect(131,165,80,540);
  rect(161,505,700,200);  
  rect(211,257,600,150);
  fill(0);
  rect(154,144,35,20);
  
  //atap
  fill(63,120,153);
  stroke(0);
  strokeWeight(2);
  quad(211,406,111,506,911,506,811,406);
  triangle(511,60,116.09,257.25,880,257.25);
  
  fill(249,243,212);
  triangle(705.5,114,524.93,258,886.07,258);
  fill(63,120,153);
  quad(706.5,114,525.93,258,706.5,125.5,887.07,258);
  
  fill(249,243,212);
  quad(490.31,394,363,506.5,490.31,506.5,617.61,506.5);
  fill(63,120,153);
  quad(490,394,362.69,506.5,490,404.5,617.31,506.5);
 
 //jendela bulat
  fill(29,46,60);
  stroke(255);
  strokeWeight(5);
  ellipse(706,210,60,60);
  ellipse(490,465,50,50);
  
  //talang
  fill(255);
  stroke(0);
  strokeWeight(2);
  quad(138,246,116,257,529,257,542,246);
  quad(121.5,495,111,506,363,506.5,376,495);
  quad(605.5,496.5,618,506.5,910.5,506.5,899,494.5);
  
  //tiang
  fill(255);
  stroke(0);
  strokeWeight(1);
  rect(374,507,10,198);
  rect(594,507,10,198);
  rect(591,258,10,149);
  rect(801,257,10,149);
  
  //pintu
  noStroke();
  fill(173,52,56);
  rect(440,507,100,198);
  fill(243,212,100);
  rect(448,592,10,30);
  rect(448,669,85,30);
  
  //jendela
  fill(29,46,60);
  stroke(255);
  strokeWeight(2);
  rect(252,272,120,120);
  rect(412,274,120,120);
  rect(613,272,175,120);
  rect(208,547,120,120);
  rect(668,547,120,120);
  
  rect(252,272,60,120);
  rect(412,274,60,120);
  rect(613,272,120,120);
  rect(613,272,60,120);
  rect(208,547,60,120);
  rect(668,547,60,120);
  
  fill(255);
  noStroke();
  rect(252,310,120,2);
  rect(252,348,120,2);
  rect(412,312,120,2);
  rect(412,350,120,2);
  rect(613,310,175,2);
  rect(613,348,175,2);
  rect(208,585,120,2);
  rect(208,623,120,2);
  rect(668,585,120,2);
  rect(668,623,120,2);
  
  //gerbang
  fill(227,227,227);
  stroke(0);
  strokeWeight(2);
  rect(0,507,131,198);
  fill(29,46,60);
  noStroke();
  rect(0,552,131,70);
  ellipse(66,532,20,20);
  fill(243,212,100);
  textSize(14);
  text("SATPAM", 38,592);
  
}

void jalan() {
  
  noStroke();
  fill(96,96,96);
  rect(0,705,1024,63);
  fill(27,27,27);
  rect(0,705,1024,15);
  
}

void awan2() {
  
  noStroke();
  fill(188,239,253);
  ellipse(-46+50+x2,165+50,100,100);
  ellipse(11+(129/2)+x2,215+(71/2),129,71);
  ellipse(-46+40+x2,243+25,80,50);
  ellipse(37+(81/2)+x2,193+(71/2),81,71);
  
  ellipse(280+x2,69,100,100);
  ellipse(189+50+x2, 65+(63/2), 100, 63);
  ellipse(271+50+x2, 65+(63/2), 100, 63);
  ellipse(380+x2,74+(45/2), 100, 45);
  
  ellipse(917+x2,163+(41/2), 100, 41);
  ellipse(911+(75/2)+x2,133+(75/2), 75,75);
  ellipse(990+x2,154,100,100);
  ellipse(981+50+x2,154+(53/2),100,53);
  
  
  //Double
  
  noStroke();
  fill(188,239,253);
  ellipse((-46+50)*1+x2,165+50,100,100);
  ellipse((11+(129/2))*1+x2,215+(71/2),129,71);
  ellipse((-46+40)*1+x2,243+25,80,50);
  ellipse((37+(81/2))*1+x2,193+(71/2),81,71);
  
  ellipse(280*-1+x2,69,100,100);
  ellipse((189+50)*-1+x2, 65+(63/2), 100, 63);
  ellipse((271+50)*-1+x2, 65+(63/2), 100, 63);
  ellipse(380*-1+x2,74+(45/2), 100, 45);
  
  ellipse(917*-1+x2,163+(41/2), 100, 41);
  ellipse((911+(75/2))*-1+x2,133+(75/2), 75,75);
  ellipse(990*-1+x2,154,100,100);
  ellipse((981+50)*-1+x2,154+(53/2),100,53);
}

void kanjengNani() {
  
  //kaki
  fill(49,49,49);
  rect(406,664,20.47,30.71);
  rect(383.85,663.75,20.47,30.71);
  ellipse(405.94+(20.47/2),690.69+(11.31/2), 20.47, 11.31);
  ellipse(383.85+(20.47/2), 690+(11.31/2), 20.47, 11.31);
  fill(255,204,72);
  ellipse(388.16+(11.85/2), 696+(5.93/2), 11.85, 5.93);
  ellipse(410.25+(11.85/2), 696.07+(5.93/2), 11.85, 5.93);
  
  //badan
  fill(71,188,9);
  noStroke();
  ellipse(374.69+(62.49/2),628.2+(39.33/2),62.49,39.33);
  rect(379,609.88,53.87,58.72,20);
  fill(0);
  ellipse(404.32+(2.69/2),630.35+(2.69/2),2.69,2.69);
  ellipse(404.32+(2.69/2),638.97+(2.69/2),2.69,2.69);
  ellipse(404.32+(2.69/2),647.59+(2.69/2),2.69,2.69);
  ellipse(404.32+(2.69/2),656.75+(2.69/2),2.69,2.69);
 
 //tangan
  fill(71,188,9);
  stroke(0);
  strokeWeight(1);
  rect(372,616.88,10.77,30.71,18,18,0,0);
  rect(429.1,616.88,10.77,30.71,18,18,0,0);
  noStroke();
  rect(425,618,7,11);
  rect(380,618,7,11);
  stroke(0);
  fill(218,198,173);
  ellipse(372+(10.77/2),642.2+(10.77/2),10.77,10.77);
  ellipse(429+(10.77/2),642.2+(10.77/2),10.77,10.77);
  
  //kepala
  fill(71,188,9);
  stroke(0);
  ellipse(405+10.5,542+10.5,21,21);
  ellipse(378+27,588,54,80);
  ellipse(378+27,557+32.5,54,65);
  
  //wajah
  fill(218,198,173);
  noStroke();
  ellipse(379+(53/2),570+24,53,48);
  ellipse(392+12.5,596+3.5,25,7);
  fill(0);
  ellipse(388.16+(5.39/2), 587.79+(5.39/2), 5.39, 5.39);
  ellipse(417.79+(5.39/2), 587.79+(5.39/2), 5.39, 5.39);
  quad(388.43,582.94,386.01,587.25,390.59,585.64,395.43,588.6);
  quad(422.37,582.4,415.37,588.06,420.22,585.1,424.79,586.71);
  ellipse(396+9,600+(8.52/2),18,8.62);
  fill(218,198,173);
  ellipse(392.47+(25.32/2),597.49+3.5,25.32,7);
}

void abdul2() {
  
  int x=1000;
    
  pushMatrix();
  
  if(xMove <= 1000) {
    translate(xMove,0);
    xMove+=2;
  }
  
  if(xMove == 1002) {
    translate(1000,0);
  }
  
  println(xMove);
  
  //kaki
  fill(218,198,173);
  rect(961.25-x,670.38,18.53,34.62,20);
  rect(941.25-x,670.38,18.53,34.62,20);
  fill(49,49,49);
  rect(961.25-x,670.38,18.53,21.94);
  rect(941.25-x,670.38,18.53,21.94);
  fill(255);
  ellipse(961.25+(18.53/2)-x,694.76+(10.24/2),18.53,10.24);
  ellipse(941.25+(18.53/2)-x,694.76+(10.24/2),18.53,10.24);
  fill(49,49,49);
  rect(949.55-x,694.76,1.95,4.39);
  rect(969.55-x,694.76,1.95,4.39);
  ellipse(945.16+(10.73/2)-x,699.64+(5.39/2),10.73,5.39);
  ellipse(965.16+(10.73/2)-x,699.64+(5.39/2),10.73,5.39);
  
  //badan
  fill(223,171,70);
  noStroke();
  rect(936.88-x,621.63,48.75,53.14,20);
  fill(0);
  ellipse(959.79+(2.44/2)-x,632.36+(2.44/2),2.44,2.44);
  ellipse(959.79+(2.44/2)-x,640.16+(2.44/2),2.44,2.44);
  ellipse(959.79+(2.44/2)-x,647.96+(2.44/2),2.44,2.44);
  ellipse(959.79+(2.44/2)-x,655.76+(2.44/2),2.44,2.44);
  ellipse(959.79+(2.44/2)-x,664.05+(2.44/2),2.44,2.44);
  fill(227,227,227);
  stroke(0);
  triangle(975.36-x,621.07,958.22-x,627.07,969.81-x,632.7);
  triangle(947.2-x,621.51,953.89-x,632.52,964.86-x,625.75);
  
  //tangan
  fill(223,171,70);
  rect(932-x,628.94,9.75,17.55,18,18,0,0);
  rect(980.75-x,628.94,9.75,17.55,18,18,0,0);
  noStroke();
  rect(937-x,629,7,17);
  rect(978-x,629,7,17);
  fill(218,198,173);
  rect(932-x,646.49,9.75,10.24);
  rect(980.75-x,646.49,9.75,10.24);
  stroke(0);
  ellipse(932+(9.75/2)-x,651.86+(9.75/2),9.75,9.75);
  ellipse(980.75+(9.75/2)-x,651.86+(9.75/2),9.75,9.75);
  
  //wajah
  fill(218,198,173); 
  noStroke();
  ellipse(936.88+(48.75/2)-x,577.26+(48.75/2),48.75,48.75);
  fill(0);
  ellipse(945.16+(4.88/2)-x,601.64+(4.88/2),4.88,4.88);
  ellipse(965.98+(4.88/2)-x,601.64+(4.88/2),4.88,4.88);
  quad(946-x,600,944-x,602,946-x,601,950-x,600);
  quad(970-x,600,966-x,600,970-x,601,972-x,602);
  ellipse(950.96+(16.58/2)-x,611.39+(7.8/2),16.58,7.8);
  fill(218,198,173);
  ellipse(949.5+(19.5/2)-x,610.42+(7.8/2),19.5,7.8);
  
  //rambut
  fill(0);
  ellipse(932+(9.75/2)-x,592+8,9.75,16);
  ellipse(932.49+8-x,584+8,16,16);
  ellipse(934.93+8-x,574.34+8,16,16);
  ellipse(946.63+8-x,584+8,16,16);
  ellipse(943.21+8-x,569.95+8,16,16);
  ellipse(952.48+8-x,570.93+8,16,16);
  ellipse(956.86+8-x,578.73+8,16,16);
  ellipse(963.69+8-x,568+8,16,16);
  ellipse(966.62+8-x,582.14+8,16,16);
  ellipse(974.42+8-x,573.85+8,16,16);
  ellipse(974.42+8-x,584.09+8,16,16);
  ellipse(981.24+(8.29/2)-x,590.43+(16.09/2),8.29,16.09);
  
  popMatrix();
  
}

//--------------------------------------SCENE3----------------------------------------

void scene3() {
  setGradient(0, 0, 1024, 768, c1, c2, Y_AXIS); 
  noStroke(); 
  matahari3();
  if(x3<width-1){
      x3 = x3 + 0.8;
      awan3();
    }
  gedunglatar3();
  gedunglatar2();
  gedunglatar1();
  gedung();
  tiang3();
  pohon();
  buble();
  abdul3();
}

void gedunglatar1(){
  fill(52,163,234);
  rect(0, 668-bg, 1024, 100);
  rect(0,613-bg,100,55);
  rect(25,593-bg,75,32);
  rect(150,543-bg,100,125);
  rect(304,613-bg,125,55);
  rect(371,593-bg,58,25);
  rect(313,558-bg,58,55);
  rect(511,618-bg,77,55);
  rect(608,593-bg,75,75);
  rect(608,518-bg,38,75);
  rect(622,488-bg,10,30);
  rect(725,638-bg,100,30);
  rect(737,538-bg,75,100);
  rect(825,593-bg,50,75);
  rect(924,593-bg,100,75);
  rect(949,563-bg,75,30);  
}

void gedunglatar2(){
  fill(62,197,254);
  rect(0,568-bg,1024,100);
  rect(50,513-bg,100,55);
  rect(75,458-bg,50,55);
  ellipse(100,455-bg,45,45);
  rect(209,488-bg,100,82);
  rect(239,443-bg,70,45);
  rect(354,323-bg,100,245);
  rect(379,268-bg,50,55);
  rect(399,218-bg,10,50);
  rect(505,508-bg,127,60);
  rect(511,458-bg,50,50);
  rect(569,485-bg,49,23);
  rect(707,454-bg,43,114);
  rect(750,504-bg,25,64);
  rect(775,448-bg,250,120);
  rect(785,348-bg,120,100);
  rect(974,419-bg,50,29);
  rect(801,293-bg,104,55);  
}

void gedunglatar3(){
  fill(122,224,255);
  rect(0,468-bg,1024,100);
  rect(0,418-bg,50,50);
  rect(100,358-bg,100,110);
  rect(100,323-bg,70,35);
  rect(230,413-bg,100,55);
  rect(245,358-bg,70,55);
  ellipse(280,347-bg,61,61);
  rect(430,436-bg,70,35);
  rect(559,433-bg,70,35);
  rect(572,398-bg,40,35);
  rect(588,368-bg,10,30);
  rect(677,433-bg,100,35);
  rect(687,413-bg,65,20);
  rect(926,428-bg,48,20);
  rect(959,408-bg,45,20);
  
}


void gedung() {
  fill(109,179,194);
  stroke(0);
  quad(264, 633,313,648,313,768,264,768);
  quad(215,518,264,547,264,768,215,768);
  quad(151,324,176,337,176,768,151,768);
  rect(30,324,121,442);
  rect(176,518,39,248);
  fill(221,214,206);
  rect(177,561,15,15);
  rect(196,621,15,15);
  rect(177,651,15,15);
  rect(40,335,25,25);
  rect(104,407,25,25);
  rect(49,456,25,25);
  rect(66,522,25,25);
  rect(102,582,25,25);
  rect(49,652,25,25);
}

void tiang3() {
  fill(235,218,128);
  ellipse(127,173,56,21);
  strokeJoin(ROUND);
  fill(196,196,196);
  rect(28,161,12,81,10);
  rect(19,161,83,13,10);
  fill(143,135,132);
  rect(0,118,30,671,10);
  fill(57);
  rect(0,224,40,6);
  rect(90,161,12,18);
  rect(102,161,57,9);
}

void abdul3(){
  
  //Start
  int t = millis() / 1000;
  int x = 0;
  //println(t);
  if(t % 2 == 0) {
    x = 0;
  } else if(t % 2 == 1) {
    x = 30;
  }
  //End
  
  //Kaki
  fill(49);
  rect(517+x,734,38,45);
  rect(476+x,734,38,45);
  //
  //Baju
  fill(223,171,70);
  noStroke();
  rect(467+x,634,100,109,20);
  //
  //Lengan baju
  stroke(0);
  rect(557+x,649,20,36,18,18,0,0);
  rect(457+x,649,20,36,18,18,0,0);
  //
  //Kotak noStroke lengan
  noStroke();
  rect(468+x,649,13,35);
  rect(553+x,649,13,35);
  //
  //Kotak tangan
  fill(218,198,173);
  rect(557+x,685,20,21);
  rect(457+x,685,20,21);
  //
  //Bundar tangan
  stroke(0);
  ellipse(567+x,706,20,20);
  ellipse(467+x,706,20,20);
  //
  //Kancing baju
  fill(0);
  ellipse(517+x,661,5,5);
  ellipse(517+x,677,5,5);
  ellipse(517+x,693,5,5);
  ellipse(517+x,709,5,5);
  ellipse(517+x,726,5,5);
  //
  //Kerah baju
  fill(227);
  stroke(0);
  triangle(543+x,632,534+x,656,510+x,645);
  triangle(488+x,633,524+x,642,501+x,656);
  //
  //Kepala
  noStroke();
  fill(218,198,173);
  ellipse(516+x,593,100,100);
  //
  //Mulut
  fill(0);
  ellipse(516+x,625,34,16);
  fill(218,198,173);
  ellipse(516+x,628,40,16);
  //
  //Mata
  fill(0);
  ellipse(489+x,593,10,10);
  ellipse(544+x,593,10,10);
  fill(218,198,173);
  ellipse(489+x,591,10,10);
  ellipse(544+x,591,10,10);
  //
  //Rambut
  fill(0);
  int jajal = 17;
  int jajal2 = 12;
  ellipse(450+jajal+x,574+jajal2,20,33);
  ellipse(458+jajal+x,557+jajal2,33,33);
  ellipse(463+jajal+x,537+jajal2,33,33);
  ellipse(480+jajal+x,528+jajal2,33,33);
  ellipse(487+jajal+x,557+jajal2,33,33);
  ellipse(499+jajal+x,530+jajal2,33,33);
  ellipse(508+jajal+x,546+jajal2,33,33);
  ellipse(522+jajal+x,524+jajal2,33,33);
  ellipse(528+jajal+x,553+jajal2,33,33);
  ellipse(544+jajal+x,536+jajal2,33,33);
  ellipse(544+jajal+x,557+jajal2,33,33);
  ellipse(550+jajal+x,570+jajal2,17,33);
  
}

void awan3(){
  fill(188,239,253);
  ellipse(158+x3,93,80,50);
  ellipse(180+x3,53,80,80);
  ellipse(215+x3,93,80,50);

  ellipse(77+x3,357,100,63);
  ellipse(118+x3,321,100,100);
  ellipse(159+x3,358,100,63);
  ellipse(218+x3,367,100,45);

  ellipse(553+x3,100,100,100);
  ellipse(543+x3,163,80,50);
  ellipse(626+x3,113,81,71);
  ellipse(600+x3,135,129,71);

  ellipse(615+x3,423,100,41);
  ellipse(639+x3,393,75,75);
  ellipse(688+x3,380,100,100);
  ellipse(729+x3,414,100,53);
  
  //Double
  fill(188,239,253);
  ellipse(158*-1,93,80,50);
  ellipse(180*-1,53,80,80);
  ellipse(215*-1,93,80,50);

  ellipse(77*-1,357,100,63);
  ellipse(118*-1,321,100,100);
  ellipse(159*-1,358,100,63);
  ellipse(218*-1,367,100,45);

  ellipse(553*-1,100,100,100);
  ellipse(543*-1,163,80,50);
  ellipse(626*-1,113,81,71);
  ellipse(600*-1,135,129,71);

  ellipse(615*-1,423,100,41);
  ellipse(639*-1,393,75,75);
  ellipse(688*-1,380,100,100);
  ellipse(729*-1,414,100,53);
}

void matahari3(){
  noStroke();
  fill(125,216,245);
  ellipse(350,120,175,175);
  fill(158,226,230);
  ellipse(350,120,150,150);
  fill(205,239,206);
  ellipse(350,120,125,125);
  fill(255,255,183);
  ellipse(350,120,100,100);
}

void pohon() {
  fill(156,135,120);
  rect(954,277,70,491);
  fill(115,168,114);
  ellipse(939,287,100,100);
  noStroke();
  ellipse(989,280,100,100);
  stroke(0);
  ellipse(862,263,100,100);
  ellipse(838,50,100,100);
  ellipse(799,107,100,100);
  ellipse(762,180,100,100);
  ellipse(834,213,100,100);
  fill(156,135,120);
  noStroke();
  quad(912,258,950,246,988,331,957,337);
  quad(993,256,1022,248,1022,331,990,334);
  fill(115,168,114);
  stroke(0);
  ellipse(994,221,100,100);
  ellipse(929,239,100,100);
  noStroke();
  ellipse(953,107,272,272);
  ellipse(838,153,100,100);
}

void buble(){
  noStroke();
  fill(255);
  ellipse(596,536,13,13);
  ellipse(615,524,18,18);
  ellipse(644,503,43,29);
  ellipse(698,390,342,236);
  
  //Rumah
  strokeWeight(2);
  stroke(0);
  fill(249,243,212);
  rect(607,330,19,133);
  rect(615,414,173,50);
  rect(627,352,148,37);
  fill(63,120,153);
  triangle(604,352,702,304,793,352);
  quad(603,414,627,389,776,389,810,414);
  fill(249,243,212);
  triangle(665,414,697,386,728,414);
  triangle(705,353,750,317,795,353);
  
  noStroke();
  fill(0);
  quad(665,414,696,386,728,414,696,389);
  quad(705,353,750,317,795,353,750,320);
  fill(173,52,56);
  rect(684,414,24,49);
  fill(243,212,100);
  rect(685.52,452,21,7);
  fill(255);
  ellipse(750,340,14,14);
  fill(0);
  ellipse(750,340,4,4);
  fill(255);
  ellipse(697,404,12,12);
  fill(0);
  ellipse(697,404,4,4);
  
  stroke(255);
  strokeWeight(2);
  fill(29,46,60);
  rect(738,425,30,30);
  line(752,425,752,454);
  line(738,435,767,435);
  line(738,444,767,444);
  rect(627,424,30,30);
  line(627,434,656,434);
  line(627,443,656,444);
  line(642,425,642,454);
  rect(727,356,43,30);
  line(727,365,770,366);
  line(727,375,770,375);
  line(756,357,756,386);
  line(741,357,741,386);
  rect(677,357,30,30);
  line(677,366,707,366);
  line(677,375,707,375);
  line(693,357,693,386);
  rect(637,356,30,30);
  line(652,357,653,386);
  line(637,366,667,366);
  line(637,375,667,375);
  fill(255);
  stroke(0);
  rect(721,353,3,37);
  rect(774,352,3,37);
  rect(720,414,3,49);
  rect(669,414,3,49);
  noStroke();
  fill(0);
  rect(613,325,8,5);
  
  
  //Abdul
  //Kaki
  noStroke();
  fill(218,198,173);
  rect(684,452,6,12,20);
  rect(677,452,6,12,20);
  fill(31);
  rect(684,452,6,7.5);
  rect(677,452,6,7.5);
  fill(255);
  ellipse(680,462,6,3.5);
  ellipse(687,462,6,3.5);
  fill(0);
  ellipse(682,464,3.5,2);
  ellipse(687,464,3.5,2);
  rect(680.5,461,0.6,1.5);
  rect(689,462,0.6,1.5);
  
  //Lengan baju
  stroke(0);
  fill(223,171,70);
  rect(674,438,3.3,6,18,18,0,0);
  rect(690,438,3.3,6,18,18,0,0);
  
  //Lengan baju noStroke
  noStroke();
  rect(676,438,2,6);
  rect(690,438,2,6);
  
  //Baju
  fill(223,171,70);
  noStroke();
  rect(675,435,16.5,18,20);
  
  //Tangan
  fill(218,198,173);
  noStroke();
  rect(690,443,3,3.5);
  rect(674,443,3,3.5);
  
  stroke(0);
  strokeWeight(0.4);
  ellipse(675,447,3.3,3.3);
  ellipse(692,447,3.3,3.3);
  
  
  //Kancing baju
  noStroke();
  fill(0);
  ellipse(683.5,439,1,1);
  ellipse(683.5,441,1,1);
  ellipse(683.5,444,1,1);
  ellipse(683.5,447,1,1);
  ellipse(683.5,449,1,1);
  
  //Kerah
  stroke(0);
  fill(255);
  triangle(688.7,435,687,439,683,437);
  triangle(679,435,685,437,681,439);
  
  //Kelapa
  noStroke();
  fill(218,198,173);
  ellipse(683,428,16.5,16.5);
  
  //Mata
  fill(0);
  ellipse(678,429,1.6,1.6);
  ellipse(688,429,1.6,1.6);
  
  //Mulut
  ellipse(683,433,5.6,2.6);
  fill(218,198,173);
  ellipse(683,432.5,6.6,2.6);
  
  //Rambut
  fill(0);
  noStroke();
  ellipse(675,428,3.3,5.5);
  ellipse(677,425,5.5,5.5);
  ellipse(678,422,5.5,5.5);
  ellipse(680,420,5.5,5.5);
  ellipse(682,425,5.5,5.5);
  ellipse(684,421,5.5,5.5);
  ellipse(685,423,5.5,5.5);
  ellipse(687,420,5.5,5.5);
  ellipse(689,425,5.5,5.5);
  ellipse(691,422,5.5,5.5);
  ellipse(691,425,5.5,5.5);
  ellipse(692,427,2.8,5.5);
}

//-------------------------------SCENE4-----------------------------------------------

void scene4() {
  atm();
}

void atm(){
  background(87);
  fill(67,98,145);
  noStroke();
  rect(212,84,600,600);
  fill(196);
  rect(62,124,100,100);
  rect(62,264,100,100);
  rect(62,404,100,100);
  rect(62,544,100,100);
  rect(862,124,100,100);
  rect(862,264,100,100);
  rect(862,404,100,100);
  rect(862,544,100,100);
  fill(255);
  textSize(28);
  text("PT BANK BING BONG INDONESIA",300,127);
  textSize(24);
  text("INFORMASI SALDO",409,260);
  text("SALDO: RP", 366,376);
  text("34, 573", 580,376);
  text("TRANSAKSI LAGI?", 414,522);
  text("YA =>",724,468);
  text("TIDAK =>",685,605);
}


//----------------------------------SCENE5--------------------------------------------

void scene5() {
  setGradient(0, 0, 1024, 768, c1, c2, Y_AXIS); 
  noStroke();
  if(x5<width-1){
      x5 = x5 + 0.5;
      awan5();
  }
  tembok();
  tianglistrik();
  banner();
  ac();
  warung();
  sampah();
  misuh();
  abdul5();
}

//Void dibawah bisa dipakai di scene 5-7 kecuali void karakter dan awan
void awan5() {
   noStroke();
   //Awan kiri
   fill(188,239,253);
   ellipse(198+x5,118,80,50);
   ellipse(220+x5,83,80,80);
   ellipse(255+x5,118,80,50);
   
   //Awan kanan
   ellipse(583+x5,183,80,50);
   ellipse(593+x5,135,100,100);
   ellipse(665+x5,170,129,71);
   ellipse(666+x5,148,81,71);
   
   //Double
   noStroke();
   //Awan kiri
   fill(188,239,253);
   ellipse(198*-1+x5,118,80,50);
   ellipse(220*-1+x5,83,80,80);
   ellipse(255*-1+x5,118,80,50);
   
   //Awan kanan
   ellipse(583*-1+x5,183,80,50);
   ellipse(593*-1+x5,135,100,100);
   ellipse(665*-1+x5,170,129,71);
   ellipse(666*-1+x5,148,81,71);
   
}

void tembok(){
  //Tembok kiri
  fill(196);
  rect(0,0,100,768);
  stroke(0);
  quad(97,0,399,304,399,768,97,768);
  //Tembok kanan
  quad(622,304,924,0,924,768,622,768);
  noStroke();
  rect(924,0,100,768);
}

void tianglistrik(){
  //Tiang kiri
  stroke(0);
  fill(196);
  rect(115,168,12,81,0,0,10,10);
  rect(106,168,83,13);
  fill(143,135,132);
  rect(87,125,30,671,10,10,0,0);
  fill(57);
  noStroke();
  rect(87,231,40,6);
  fill(235,218,128);
  ellipse(214,178,56,21);
  fill(57);
  rect(177,168,12,18);
  rect(189,168,57,9);
  
  //Tiang kiri belakang
  stroke(0);
  fill(196);
  rect(396.85,478.28,5.94,40.08,0,0,10,10);
  rect(392.4,478.28,41.07,6.43);
  fill(143,135,132);
  rect(383,457,14.84,332,10,10,0,0);
  fill(57);
  noStroke();
  rect(383,509.45,19.79,2.97);
  fill(235,218,128);
  ellipse(431.98+(27.71/2),478.28+(10.38/2),27.71,10.39);
  fill(57);
  rect(427.53,478.28,5.94,8.91);
  rect(433.47,478.28,28.2,4.45);
  
  //Tiang kanan
  stroke(0);
  fill(143,135,132);
  rect(907,-32,26,800);
}

void banner() {
  stroke(0);
  //Tali kiri atas
  line(116.79,255.45,337,358.5);
  //Tali kiri bawah
  line(117.12,509.49,337.12,457.49);
  //Tali kanan atas
  line(687.21,357.45,906.21,254.45);
  //Tali kanan bawah
  line(686.88,456.49,906.88,508.49);
  //Banner
  fill(241,220,111);
  rect(337,357,350,100);
  //Wajah paslon
  fill(218,196,173);
  noStroke();
  ellipse(420,410,61,61);
  //Peci paslon
  fill(0);
  quad(400,371,442,371,447,397,394,397);
  //Mata paslon
  ellipse(408,408,10,10);
  ellipse(433,408,10,10);
  //Mulut paslon
  ellipse(421,422,20,20);
  fill(218,196,173);
  rect(411,412,20,11);
  fill(229,107,107);
  ellipse(421,430,6,4);
  //Tulisan
  fill(0);
  textSize(18);
  text("COBLOS NO 5.",487,392);
  text("Jujur dan Adil",488,433);
}

void ac() {
  //Kotak
  fill(255);
  noStroke();
  quad(807,356,907,340,907,428.5,807,428.5);
  
  //Bundar dan garis abu-abu
  fill(196);
  ellipse(816+(33/2),362+(56/2),33,56);
  quad(851,362.5,900.5,356.5,900.5,362.5,852.5,367);
  quad(852,377,901.5,371,901.5,377,853.5,381.5);
  quad(853,391.5,902.5,385.5,902.5,391.5,854.5,396);
  quad(854,406,903.5,400,903.5,406,855.5,410.5);
  
  //Bundar hitam
  fill(0);
  ellipse(833,390,24,40);
  //Tulisan
  textSize(8);
  text("AC",852,428);
}

void warung() {
  //Atap
  stroke(0);
  fill(37,79,118);
  quad(117,535.5,315.5,542.5,385,602,173,614.5);
  
  //Plang kiri
  fill(126,117,117);
  quad(176,640.56,276,634,276,682.94,176,690);
  
  //Plang kanan
  quad(275,634,379.5,627.5,379.5,676,275,683);
  
  //Tulisan plang kiri
  fill(255);
  textSize(10);
  text("Ayam Geprek", 197,662);
  text("Nasi Telor",205,679);
  
  //Tulisan plang kanan
  text("Es Teh", 289,655);
  text("Kopi",341,653);
  text("Nutrisari",310,673);
 
  //Bangku
  fill(146,122,87);
  quad(192,724,207,728,207,768,192,768);
  quad(353,716,368,720.73,368,768,353,768);
  quad(186,721,372,711,373.5,728,186,737.5);
 
  //Tiang warung 
  fill(75);
  rect(172,613,4,155);
  rect(379,602,4,166);
 
  //speaker
  fill(50);
  rect(129,669,35,98);
  
  //lingkaran abu-abu
  fill(196);
  ellipse(147,688,20,20);
  ellipse(147,713,20,20);
  ellipse(147,738,20,20);
  
  //lingkarang hitam
  fill(0);
  ellipse(147,688,14,14);
  ellipse(147,713,14,14);
  ellipse(147,738,14,14);
}

void sampah() {
  //sampah atas
  stroke(0);
  fill(248,97,97); //merah
  ellipse(887,680,32,32);
  fill(99,143,78); //hijau
  ellipse(909,680,32,32);
  ellipse(896,668,20,20);
  fill(239,169,78); //orange
  ellipse(933,674,32,32);
  fill(99,143,78);
  ellipse(953,671,32,32);
  
  //Kotak sampah
  fill(95);
  quad(863,686.5,924,669,924,768,863,768);
  rect(924,668,49.5,100);
  
  //sampah bawah
  fill(248,97,97);
  ellipse(872,750,18,18);
  ellipse(863,760,32,32);
  fill(99,143,78);
  ellipse(910,760,32,32);
  ellipse(897,745,14,14);
  fill(56,55,55); //hitam
  ellipse(876+(11/2),759+(11/2),11,11);
  ellipse(886+(11/2),761+(11/2),11,11);
}

void misuh() {
  fill(255);
  quad(643.5,570,582,614,686,637,697.19,579.44);
  quad(659.21,538,633,587.5,693.98,606.67,711.69,556.54);
  quad(672,564.5,716.65,606.25,765.3,553.83,719.15,511);
  quad(723.5,572.43,769.65,615.25,818.3,562.82,772.15,520);
  quad(779.5,565,768,610,818.17,627,854.62,551.57);
  quad(757.5,600,791,640.5,861.5,595,791,563);
  quad(777.77,580,769.5,639,859,641,819,573);
  quad(762.21,595,744.5,645.13,796.98,663.67,814.69,613.54);
  quad(723.21,600,705.5,650.13,757.98,668.67,775.69,618.54);
  quad(639,609.5,656.3,660.64,711.19,651.44,702.39,599);
  noStroke();
  ellipse(630+(212/2),542+(112/2),212,111);
  //tulisan
  fill(0);
  textSize(24);
  text("!@#$!%^@%*+!",656,584+23);
  
}

void abdul5() {
  
  //Start
  int t = millis() / 1000;
  int x = 0;
  //println(t);
  if(t % 2 == 0) {
    x = 0;
  } else if(t % 2 == 1) {
    x = 20;
  }
  //End
  
  //kaki
  noStroke();
  fill(218,198,173);
  rect(482.52+x,733.47,27.05,50.53,20);
  rect(511.7+x,733.47,27.05,50.53,20);
  fill(49,49,49);
  rect(482.52+x,733.47,27.05,32.03);
  rect(511.7+x,733.47,27.05,32.03);
  
  //badan
  fill(223,171,70);
  rect(476.12+x,662.29,71.17,77.58,20);
  fill(0);
  ellipse(509.57+(3.56/2)+x,677.95+(3.56/2),3.56,3.56);
  ellipse(509.57+(3.56/2)+x,689.34+(3.56/2),3.56,3.56);
  ellipse(509.57+(3.56/2)+x,700.73+(3.56/2),3.56,3.56);
  ellipse(509.57+(3.56/2)+x,712.11+(3.56/2),3.56,3.56);
  ellipse(509.57+(3.56/2)+x,724.21+(3.56/2),3.56,3.56);
  fill(227,227,227);
  stroke(0);
  triangle(507.28+x,670.23,524.2+x,678.45,532.3+x,661.47);
  triangle(491.19+x,662.11,500.96+x,678.19,516.96+x,668.31);
  
  //tangan
  fill(223,171,70);
  rect(469+x,672.97,14.23,25.62,18,18,0,0);
  rect(540+x,672.97,14.23,25.62,18,18,0,0);
  noStroke();
  rect(477+x,673,9.25,24.91);
  rect(537+x,673,9.25,24.91);
  fill(218,198,173);
  rect(469+x,699,14.23,14.95);
  rect(540+x,699,14.23,14.95);
  stroke(0);
  ellipse(469+(14.23/2)+x,706+(14.23/2),14.23,14.23);
  ellipse(540+(14.23/2)+x,706+(14.23/2),14.23,14.23);
  
  //wajah
  noStroke();
  ellipse(476+(71/2)+x,598+(71/2),71,71);
  fill(0);
  ellipse(488.22+3.5+x,633+3.5,7,7);
  ellipse(527.36+3.5+x,633+3.5,7,7);
  quad(491.42+x,630.26,488.22+x,631.33,498.89+x,634.53,496.4+x,632.04);
  quad(527+x,632,524.5+x,634.5,535+x,631,532+x,630);
  ellipse(499.6+12.1+x,652.33+(11.39/2),24.2,11.39);
  fill(218,198,173);
  ellipse(497.47+(28.47/2)+x,653.75+(11.39/2),28.47,11.39);
  
  //rambut
  fill(0);
  ellipse(469+(14.23/2)+x,619.59+(23.49/2),14.23,23.49);
  ellipse(469.71+(23.49/2)+x,607.49+(23.49/2),23.49,23.49);
  ellipse(473.27+(23.49/2)+x,593.25+(23.49/2),23.49,23.49);
  ellipse(490.35+(23.49/2)+x,607.49+(23.49/2),23.49,23.49);
  ellipse(485.37+(23.49/2)+x,586.85+(23.49/2),23.49,23.49);
  ellipse(498.89+(23.49/2)+x,588.27+(23.49/2),23.49,23.49);
  ellipse(505.3+(23.49/2)+x,599.66+(23.49/2),23.49,23.49);
  ellipse(515.26+(23.49/2)+x,584+(23.49/2),23.49,23.49);
  ellipse(519.53+(23.49/2)+x,604.64+(23.49/2),23.49,23.49);
  ellipse(530.92+(23.49/2)+x,592.54+(23.49/2),23.49,23.49);
  ellipse(530.92+(23.49/2)+x,607.49+(23.49/2),23.49,23.49);
  ellipse(540.89+(12/2)+x,616.74+(23.49/2),12,23.49);
}

//-----------------------------------SCENE6-------------------------------------------

void scene6() {
  setGradient(0, 0, 1024, 768, c1, c2, Y_AXIS); 
  noStroke();
  if(x6<width-1){
      x6 = x6 + 0.5;
      awan6();
  }
  tembok();
  tianglistrik();
  banner();
  ac();
  warung();
  sampah();
  abdul6();
  buble6();
  timin6();

}

void awan6() {
   noStroke();
   //Awan kiri
   fill(188,239,253);
   ellipse(198+x6,118,80,50);
   ellipse(220+x6,83,80,80);
   ellipse(255+x6,118,80,50);
   
   //Awan kanan
   ellipse(583+x6,183,80,50);
   ellipse(593+x6,135,100,100);
   ellipse(665+x6,170,129,71);
   ellipse(666+x6,148,81,71);
   
   //Double
   noStroke();
   //Awan kiri
   fill(188,239,253);
   ellipse(198*-1+x6,118,80,50);
   ellipse(220*-1+x6,83,80,80);
   ellipse(255*-1+x6,118,80,50);
   
   //Awan kanan
   ellipse(583*-1+x6,183,80,50);
   ellipse(593*-1+x6,135,100,100);
   ellipse(665*-1+x6,170,129,71);
   ellipse(666*-1+x6,148,81,71);
   
}

void abdul6(){
  
  noStroke();
  //Kaki  
  fill(218,198,173);
  rect(462,718,38,71,20);
  rect(503,718,38,71,20);
  fill(49);
  rect(462,718,38,45);
  rect(503,718,38,45);
  
  //Badan
  fill(223,171,70);
  rect(453,618,100,109,20);
  fill(0);
  ellipse(502,707,5,5);
  ellipse(502,690,5,5);
  ellipse(502,674,5,5);
  ellipse(502,658,5,5);
  ellipse(502,642,5,5);
  fill(255);
  stroke(0);
  strokeWeight(1);
  triangle(496.8,629,520.5,640.7,532,616.8);
  triangle(474,618,488,640,510.4,626.5);
  
  //lengankiri
  fill(223,171,70);
  rect(443,633,20,36,18,18,0,0);
  
  noStroke();
  fill(218,198,173);
  rect(443,670,20,20);
  
  stroke(0);  
  strokeWeight(1);
  fill(218,198,173);
  ellipse(453,690,20,20);
  
  noStroke();
  fill(223,171,70);
  rect(454,633,13,35);
  
  //lengankanan
  stroke(0);
  strokeWeight(1);
  fill(223,171,70);
  rect(543,633,20,36,18,18,0,0);
  
  noStroke();
  fill(218,198,173);
  rect(543,670,20,21);
  
  stroke(0);
  strokeWeight(1);
  ellipse(553,690,20,20);
  
  noStroke();
  fill(223,171,70);
  rect(539,633,13,35);
  
  //Kepala
  fill(218,198,173);  
  ellipse(503,577,100,100);
  fill(0);
  ellipse(505,610,15,10);
  ellipse(485,582,10,10);
  ellipse(530,582,10,10);
  rect(479,574,11,2);
  quad(530.5,571.5,524,577,530.5,574,537,577);
  
  //rambut
  ellipse(443+(20/2),558+(33/2),20,33);
  ellipse(444+(33/2),541+(33/2),33,33);
  ellipse(449+(33/2),521+(33/2),33,33);
  ellipse(473+(33/2),541+(33/2),33,33);
  ellipse(466+(33/2),512+(33/2),33,33);
  ellipse(485+(33/2),514+(33/2),33,33);
  ellipse(494+(33/2),530+(33/2),33,33);
  ellipse(508+(33/2),508+(33/2),33,33);
  ellipse(514+(33/2),537+(33/2),33,33);
  ellipse(530+(33/2),520+(33/2),33,33);
  ellipse(530+(33/2),541+(33/2),33,33);
  ellipse(544+(17/2),554+(33/2),17,33); 
}

void buble6() {
  fill(255);
  ellipse(340+50,464+50,100,100);
  rect(390,511,46,46);
  fill(0);
  textSize(48);
  text("!!!",371,486+46);

}

void timin6(){
  //kaki
  fill(49);
  rect(775,727,38,45);
  rect(816,727,38,45);
  
  //badan
  fill(134,133,132);
  rect(766,627,100,109,20);
  fill(218,198,173);
  ellipse(788+(13/2),701+(13/2),13,13);
  ellipse(791+(13/2),705+(13/2),13,13);
  ellipse(838+(13/2),642+(13/2),13,13);
  ellipse(804,715,6,6);
  ellipse(841,654,6,6);
  
  //lengankiri
  stroke(0);
  strokeWeight(1);
  fill(134,133,132);
  rect(756,642,20,36,18,18,0,0);
  
  noStroke();
  fill(218,198,173);
  rect(757,679,20,21);
  
  stroke(0);  
  strokeWeight(1);
  fill(218,198,173);
  ellipse(766,699,20,20);
  
  noStroke();
  fill(134,133,132);
  rect(767,642,13,35);
  
  //lengankanan
  stroke(0);
  strokeWeight(1);
  fill(134,133,132);
  rect(856,642,20,36,18,18,0,0);
  
  noStroke();
  fill(218,198,173);
  rect(857,679,20,21);
  
  stroke(0);
  strokeWeight(1);
  ellipse(866,699,20,20);
  
  noStroke();
  fill(134,133,132);
  rect(852,643,13,35);
  
  //Kepala
  fill(218,198,173);
  ellipse(816,586,100,100);
  fill(0);
  ellipse(801,591,10,10);
  ellipse(845,591,10,10);
  
  fill(0);
  ellipse(821,614,34,16);
  fill(218,198,173);
  ellipse(821,612,40,16);
  
  //topi
  fill(0);
  ellipse(764+(10/2),567+(33/2),10,33);
  ellipse(859+(10/2),567+(33/2),10,33);
  fill(123);
  quad(783,527,750,570,881,570,848,527);
  rect(783,507,65,20);
  
  //jenggot
  fill(0);
  ellipse(773+5,610+5,10,10);
  ellipse(778+5,615+5,10,10);
  ellipse(783+5,620+5,10,10);
  ellipse(788+5,624+5,10,10);
  ellipse(794+5,628+5,10,10);
  ellipse(800+5,631+5,10,10);
  ellipse(806+5,631+5,10,10);
  ellipse(805+5,635+5,10,10);
  ellipse(813+5,635+5,10,10);
  ellipse(814+5,631+5,10,10);
  ellipse(821+5,635+5,10,10);
  ellipse(823+5,631+5,10,10);
  ellipse(828+5,634+5,10,10);
  ellipse(831+5,628+5,10,10);
  ellipse(837+5,624+5,10,10);
  ellipse(841+5,620+5,10,10);
  ellipse(846+5,615+5,10,10);
  ellipse(849+5,610+5,10,10);
    
}

//---------------------------------SCENE7---------------------------------------------

void scene7() {
  setGradient(0, 0, 1024, 768, c1, c2, Y_AXIS); 
  noStroke();
  if(x7<width-1){
      x7 = x7 + 0.5;
      awan7();
  }
  tembok();
  tianglistrik();
  banner();
  ac();
  warung();
  sampah();
  abdul7();
  buble7();
  timin7();

}

void awan7() {
   noStroke();
   //Awan kiri
   fill(188,239,253);
   ellipse(198+x7,118,80,50);
   ellipse(220+x7,83,80,80);
   ellipse(255+x7,118,80,50);
   
   //Awan kanan
   ellipse(583+x7,183,80,50);
   ellipse(593+x7,135,100,100);
   ellipse(665+x7,170,129,71);
   ellipse(666+x7,148,81,71);
   
   //Double
   noStroke();
   //Awan kiri
   fill(188,239,253);
   ellipse(198*-1+x7,118,80,50);
   ellipse(220*-1+x7,83,80,80);
   ellipse(255*-1+x7,118,80,50);
   
   //Awan kanan
   ellipse(583*-1+x7,183,80,50);
   ellipse(593*-1+x7,135,100,100);
   ellipse(665*-1+x7,170,129,71);
   ellipse(666*-1+x7,148,81,71);
   
}

void abdul7() {
  //kaki
  fill(49);
  rect(266.34,734.56,60.18,71.26);
  rect(331.27,734.56,60.18,71.26);
  
  //baju
  fill(223,171,70);
  noStroke();
  rect(252.09,576.2,158.36,172.62,20);
  
  //lengan stroke
  stroke(0);
  rect(236.25,599.95,31.67,57.01,18,18,0,0);
  rect(394.62,599.95,31.67,57.01,18,18,0,0);
  
  //lengan noStroke
  noStroke();
  rect(253.67,599.95,20.59,55.43);
  rect(388.28,599.95,20.59,55.43);
  
  //tangan noStroke
  fill(218,198,173);
  rect(236.25,656.96,31.67,33.26);
  rect(394.6,656.96,31.67,33.26);
  
  //tangan stroke
  stroke(0);
  ellipse(236.25+(31.67/2),674.38+(31.67/2),31.67,31.67);
  ellipse(394.62+(31.67/2),674.38+(31.67/2),31.67,31.67);
  
  //kancing
  noStroke();
  fill(0);
  ellipse(326.52+(7.92/2),611.04+(7.92/2),7.92,7.92);
  ellipse(326.52+(7.92/2),636.38+(7.92/2),7.92,7.92);
  ellipse(326.52+(7.92/2),661.72+(7.92/2),7.92,7.92);
  ellipse(326.52+(7.92/2),687.05+(7.92/2),7.92,7.92);
  ellipse(326.52+(7.92/2),713.98+(7.92/2),7.92,7.92);
  
  //kerah
  stroke(0);
  fill(227,227,227);
  triangle(321.43,593.87,377.09,574.38,359.07,612.15);
  triangle(285.64,575.8,342.97,589.59,307.36,611.57);
  
  //wajah
  fill(218,198,173);
  noStroke();
  ellipse(252.09+(158.36/2),432.09+(158.36/2),158.36,158.36);
  
  //mulut
  fill(0);
  ellipse(323+(24/2),560+(16/2),24,16);
  fill(218,198,173);
  ellipse(319+(33/2),564+(24/2),33,24);
  
  //mata
  fill(0);
  ellipse(294.85+(15.84/2),511.27+(15.84/2),15.84,15.84);
  ellipse(366.11+(15.84/2),511.27+(15.84/2),15.84,15.84);
  
  //alis
  quad(292,506.5,302.5,508,311,507,302.5,510.5);
  quad(365,511,375,503,385,511,375,506.64);
  
  //rambut
  ellipse(236.25+(31.67/2),481.18+(52.26/2),31.67,52.26);
  ellipse(237.84+(52.26/2),454.26+(52.26/2),52.26,52.26);
  ellipse(245.75+(52.26/2),422.59+(52.26/2),52.26,52.26);
  ellipse(272.68+(52.26/2),408.33+(52.26/2),52.26,52.26);
  ellipse(283.76+(52.26/2),454.26+(52.26/2),52.26,52.26);
  ellipse(302.77+(52.26/2),411.5+(52.26/2),52.26,52.26);
  ellipse(317.02+(52.26/2),436.84+(52.26/2),52.26,52.26);
  ellipse(339.19+(52.26/2),402+(52.26/2),52.26,52.26);
  ellipse(348.69+(52.26/2),447.93+(52.26/2),52.26,52.26);
  ellipse(374.03+(52.26/2),421+(52.26/2),52.26,52.26);
  ellipse(374.03+(52.26/2),454.26+(52.26/2),52.26,52.26);
  ellipse(396.2+(26.92/2),474.85+(52.26/2),26.92,52.26);
}

void buble7(){
  fill(255);
  noStroke();
  ellipse(37+(214/2),307+(166/2),214,166);
  rect(139,379,90,90);
  fill(0);
  textSize(48);
  text("? ? ?",98,362+48);
}

void timin7() {
  //kaki
  fill(49);
  rect(611.97,746.16,57.72,68.35);
  rect(674.25,746.16,57.72,68.35);
  
  //baju
  fill(134,133,132);
  rect(598.3,594.27,151.89,165.56,20);
  
  //Lengan stroke
  stroke(0);
  rect(583.11,617.05,30.38,54.68,18,18,0,0);
  rect(735,617.05,30.38,54.68,18,18,0,0);
  
  //Lengan noStroke
  noStroke();
  rect(599.82,617.05,19.75,53.16);
  rect(728.93,617.05,19.75,53.16);
  
  //Bolong-bolong baju
  fill(218,198,173);
  noStroke();
  ellipse(707.66+(19.75/2),617.05+(19.75/2),19.75,19.75);
  ellipse(707.66+(9.11/2),630.72+(9.11/2),9.11,9.11);
  ellipse(631.72+(19.75/2),706+(19.75/2),19.75,19.75);
  ellipse(636.27+(19.75/2),712.74+(19.75/2),19.75,19.75);
  ellipse(651.46+(9.11/2),723.37+(9.11/2),9.11,9.11);
  
  //lengan kotak
  rect(583.11,671.73,30.38,31.9);
  rect(735,671.73,30.38,31.9);
  
  //tangan bundar
  stroke(0);
  ellipse(583.11+(30.38/2),688.44+(30.38/2),30.38,30.38);
  ellipse(735+(30.38/2),688.44+(30.38/2),30.38,30.38);
  
  //Muka
  noStroke();
  ellipse(598.3+(151.89/2),456.05+(151.89/2),151.89,151.89);
  
  //mata
  fill(0);
  ellipse(627+(15.19/2),532+(15.19/2),15.19,15.19);
  ellipse(694+(15.19/2),532+(15.19/2),15.19,15.19);
  
  //rambut
  ellipse(595.26+(15.19/2),503.13+(50.12/2),15.19,50.12);
  ellipse(739.56+(15.19/2),503.13+(50.12/2),15.19,50.12);
  
  //janggut
  ellipse(608.93+(15.19/2),568.45+(15.19/2),15.19,15.19);
  ellipse(616.53+(15.19/2),576.04+(15.19/2),15.19,15.19);
  ellipse(624.12+(15.19/2),583.64+(15.19/2),15.19,15.19);
  ellipse(631.72+(15.19/2),589.71+(15.19/2),15.19,15.19);
  ellipse(640.83+(15.19/2),595.79+(15.19/2),15.19,15.19);
  ellipse(649.94+(15.19/2),600.34+(15.19/2),15.19,15.19);
  ellipse(659.06+(15.19/2),600.34+(15.19/2),15.19,15.19);
  ellipse(657.54+(15.19/2),606.42+(15.19/2),15.19,15.19);
  ellipse(671.21+(15.19/2),600.34+(15.19/2),15.19,15.19);
  ellipse(669.69+(15.19/2),606.42+(15.19/2),15.19,15.19);
  ellipse(684.88+(15.19/2),600.34+(15.19/2),15.19,15.19);
  ellipse(681.84+(15.19/2),606.42+(15.19/2),15.19,15.19);
  ellipse(692.47+(15.19/2),604.9+(15.19/2),15.19,15.19);
  ellipse(697.03+(15.19/2),595.79+(15.19/2),15.19,15.19);
  ellipse(706.14+(15.19/2),589.71+(15.19/2),15.19,15.19);
  ellipse(712.22+(15.19/2),583.64+(15.19/2),15.19,15.19);
  ellipse(719.81+(15.19/2),576.04+(15.19/2),15.19,15.19);
  ellipse(724.37+(15.19/2),568.45+(15.19/2),15.19,15.19);
  
  //mulut
  ellipse(642.56+(51.64/2),563.04+(24.3/2),51.64,24.3);
  fill(218,198,173);
  ellipse(638+(60.76/2),560+(24.3/2),60.76,24.3);
  
  //caping
  fill(134,133,132);
  quad(624.12,442.38,722.85,442.38,772.98,507.69,574,507.69);
  rect(624.12,412,98.73,31.38);
}

//-------------------------------------SCENE8-----------------------------------------

void scene8(){
  setGradient(0, 0, 1024, 768, c1, c2, Y_AXIS); 
  noStroke(); 
  matahari8();
  if(x3<width-1){
      x3 = x3 + 0.8;
      awan3();
    }
  gedungbg3();
  gedungbg2();
  gedungbg1();
  gedung8();
  tiang8();
  abdul8();
}

void gedungbg1(){
  fill(52,163,234);
  rect(0, 668-bg, 1024, 100);
  rect(0,613-bg,100,55);
  rect(25,593-bg,75,32);
  rect(150,543-bg,100,125);
  rect(304,613-bg,125,55);
  rect(371,593-bg,58,25);
  rect(313,558-bg,58,55);
  rect(511,618-bg,77,55);
  rect(608,593-bg,75,75);
  rect(608,518-bg,38,75);
  rect(622,488-bg,10,30);
  rect(725,638-bg,100,30);
  rect(737,538-bg,75,100);
  rect(825,593-bg,50,75);
  rect(924,593-bg,100,75);
  rect(949,563-bg,75,30);  
}

void gedungbg2(){
  fill(62,197,254);
  rect(0,568-bg,1024,100);
  rect(50,513-bg,100,55);
  rect(75,458-bg,50,55);
  ellipse(100,455-bg,45,45);
  rect(209,488-bg,100,82);
  rect(239,443-bg,70,45);
  rect(354,323-bg,100,245);
  rect(379,268-bg,50,55);
  rect(399,218-bg,10,50);
  rect(505,508-bg,127,60);
  rect(511,458-bg,50,50);
  rect(569,485-bg,49,23);
  rect(707,454-bg,43,114);
  rect(750,504-bg,25,64);
  rect(775,448-bg,250,120);
  rect(785,348-bg,120,100);
  rect(974,419-bg,50,29);
  rect(801,293-bg,104,55);  
}

void gedungbg3(){
  fill(122,224,255);
  rect(0,468-bg,1024,100);
  rect(0,418-bg,50,50);
  rect(100,358-bg,100,110);
  rect(100,323-bg,70,35);
  rect(230,413-bg,100,55);
  rect(245,358-bg,70,55);
  ellipse(280,347-bg,61,61);
  rect(430,436-bg,70,35);
  rect(559,433-bg,70,35);
  rect(572,398-bg,40,35);
  rect(588,368-bg,10,30);
  rect(677,433-bg,100,35);
  rect(687,413-bg,65,20);
  rect(926,428-bg,48,20);
  rect(959,408-bg,45,20);
  
}


void gedung8() {
  fill(109,179,194);
  stroke(0);
  quad(264, 633,313,648,313,768,264,768);
  quad(215,518,264,547,264,768,215,768);
  quad(151,324,176,337,176,768,151,768);
  rect(30,324,121,442);
  rect(176,518,39,248);
  fill(221,214,206);
  rect(177,561,15,15);
  rect(196,621,15,15);
  rect(177,651,15,15);
  rect(40,335,25,25);
  rect(104,407,25,25);
  rect(49,456,25,25);
  rect(66,522,25,25);
  rect(102,582,25,25);
  rect(49,652,25,25);
}

void tiang8() {
  fill(235,218,128);
  ellipse(127,173,56,21);
  strokeJoin(ROUND);
  fill(196,196,196);
  rect(28,161,12,81,10);
  rect(19,161,83,13,10);
  fill(143,135,132);
  rect(0,118,30,671,10);
  fill(57);
  rect(0,224,40,6);
  rect(90,161,12,18);
  rect(102,161,57,9);
}

void abdul8(){
  
  
  //End
  
  //Kaki
  fill(49);
  rect(517,734,38,45);
  rect(476,734,38,45);
  //
  //Baju
  fill(223,171,70);
  noStroke();
  rect(467,634,100,109,20);
  //
  //Lengan baju
  stroke(0);
  rect(557,649,20,36,18,18,0,0);
  rect(457,649,20,36,18,18,0,0);
  //
  //Kotak noStroke lengan
  noStroke();
  rect(468,649,13,35);
  rect(553,649,13,35);
  //
  //Kotak tangan
  fill(218,198,173);
  rect(557,685,20,21);
  rect(457,685,20,21);
  //
  //Bundar tangan
  stroke(0);
  ellipse(567,706,20,20);
  ellipse(467,706,20,20);
  //
  //Kancing baju
  fill(0);
  ellipse(517,661,5,5);
  ellipse(517,677,5,5);
  ellipse(517,693,5,5);
  ellipse(517,709,5,5);
  ellipse(517,726,5,5);
  //
  //Kerah baju
  fill(227);
  stroke(0);
  triangle(543,632,534,656,510,645);
  triangle(488,633,524,642,501,656);
  //
  //Kepala
  noStroke();
  fill(218,198,173);
  ellipse(516,593,100,100);
  //
  //Mulut
  fill(0);  
  ellipse(507+(34/2),610+8,34,16);
  fill(218,198,173);
  ellipse(504+(40/2),608+8,40,16);
  //
  //Mata
  fill(0);
  ellipse(498+5,584+5,10,10);
  ellipse(548,589,10,10);
  //
  //alis
  quad(495,586,496,587,506.5,582,506,581);
  quad(545.5,581.5,544.5,582.5,554.5,585.5,555,585.5);
  //Rambut
  fill(0);
  ellipse(462+(20/2),581+(33/2),20,33);
  ellipse(454+(33/2),570+(33/2),33,33);
  ellipse(458+(33/2),557+(33/2),33,33);
  ellipse(463+(33/2),537+(33/2),33,33);
  ellipse(482+(33/2),521+(33/2),33,33);
  ellipse(485+(33/2),546+(33/2),33,33);
  ellipse(499+(33/2),530+(33/2),33,33);
  ellipse(509+(33/2),541+(33/2),33,33);
  ellipse(514+(33/2),520+(33/2),33,33);
  ellipse(530+(33/2),540+(33/2),33,33);
  ellipse(538+(33/2),532+(33/2),33,33);
  ellipse(550+(33/2),553+(33/2),33,33);
  ellipse(557+(17/2),568+(33/2),17,33);
  
}

void awan8(){
  fill(188,239,253);
  ellipse(158+x3,93,80,50);
  ellipse(180+x3,53,80,80);
  ellipse(215+x3,93,80,50);

  ellipse(77+x3,357,100,63);
  ellipse(118+x3,321,100,100);
  ellipse(159+x3,358,100,63);
  ellipse(218+x3,367,100,45);

  ellipse(553+x3,100,100,100);
  ellipse(543+x3,163,80,50);
  ellipse(626+x3,113,81,71);
  ellipse(600+x3,135,129,71);

  ellipse(615+x3,423,100,41);
  ellipse(639+x3,393,75,75);
  ellipse(688+x3,380,100,100);
  ellipse(729+x3,414,100,53);
  
  //Double
  fill(188,239,253);
  ellipse(158*-1,93,80,50);
  ellipse(180*-1,53,80,80);
  ellipse(215*-1,93,80,50);

  ellipse(77*-1,357,100,63);
  ellipse(118*-1,321,100,100);
  ellipse(159*-1,358,100,63);
  ellipse(218*-1,367,100,45);

  ellipse(553*-1,100,100,100);
  ellipse(543*-1,163,80,50);
  ellipse(626*-1,113,81,71);
  ellipse(600*-1,135,129,71);

  ellipse(615*-1,423,100,41);
  ellipse(639*-1,393,75,75);
  ellipse(688*-1,380,100,100);
  ellipse(729*-1,414,100,53);
}

void matahari8(){
  noStroke();
  fill(125,216,245);
  ellipse(799+(175/2),38+(175/2),175,175);
  fill(158,226,230);
  ellipse(811+75,50+75,150,150);
  fill(205,239,206);
  ellipse(824+(125/2),63+(125/2),125,125);
  fill(255,255,183);
  ellipse(837+50,75+50,100,100);
}


 
//-------------------------------------SCENE9-----------------------------------------
//Scene 9 mengambil dari scene 1 tanpa tulisan

void scene9() {
  setGradient(0, 0, 1024, 768, c1, c2, Y_AXIS);  
    matahari();
    if(x<width-1){
      x=x+1;
      awan();
    }
    gedung3();
    gedung2();
    gedung1();
    abdul9();
}

 void abdul9(){
   //kepala
   fill(218,198,173);
   ellipse(449+50,632+50,100,100);
   //rambut
   fill(0);
   rect(455,637,88,52);
   ellipse(449,663+(33/2),20,33);
   ellipse(542+(17/2),663+(33/2),20,33);
   ellipse(444+(33/2),681+(33/2),33,33);
   ellipse(460+(33/2),686+(33/2),33,33);
   ellipse(478+(33/2),682+(33/2),33,33);
   ellipse(498+(33/2),683+(33/2),33,33);
   ellipse(520+(33/2),685+(33/2),33,33);
   ellipse(530+(33/2),648+(33/2),33,33);
   ellipse(526+(33/2),625+(33/2),33,33);
   ellipse(504+(33/2),613+(33/2),33,33);
   ellipse(481+(33/2),619+(33/2),33,33);
   ellipse(462+(33/2),617+(33/2),33,33);
   ellipse(445+(33/2),626+(33/2),33,33);
   ellipse(435+(33/2),646+(33/2),33,33);
   //badan
   stroke(0);
   fill(223,171,70);
   rect(539,738,20,36,18,18,0,0);
   rect(439,738,20,36,18,18,0,0);
   noStroke();
   rect(449,723,100,109,20);  
   stroke(0);
   fill(255);
   quad(475,713,468,724,531,724,525.5,713);
 }


//-------------------------------SCENE10----------------------------------------------
 
 void scene10() {
     setGradient(0, 0, 1024, 768, c1, c2, Y_AXIS);  
    matahari();
  if(x<width-1){
      x=x+1;
      awan();
    }
    fill(140,140,140,127);   
    rect(0,209,1024,350);
    fill(0);
    //textSize(36);
    //text("مَنْ لَمْ يَشْكُرِ الْقَلِيلَ لَمْ يَشْكُرِ الْكَثِيرَ", 236,301);
    image(img,247,264);
    textSize(24);
    text("Barang siapa yang tidak mensyukuri yang sedikit",253,396); 
    text("maka ia tidak akan mampu",368,428);
    text("mensyukuri sesuatu yang banyak",354,460);
    text("Hr. Ahmad 4:278",423,508+28);
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
