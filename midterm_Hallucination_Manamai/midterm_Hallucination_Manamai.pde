//HALUCINATION


float r ;
float g ;
float b ;
float delay = 65;
float a; 
float diam; // diameter
float x;
float y;
int scene =10 ;
PFont font;
PImage imageH;
PImage imageA;
PImage imageL;
PImage imageU;
PImage imageC;
PImage imageI;
PImage imageN;
PImage imageT;
PImage imageO;
PImage imageNN;
String statement = "HALLUCINATION";
String statement2 = "H                i          i  ";
String statement3 = "HALLUCINATIONHALLUCINATIONHALLUCINATIONHALLUCINATIONHALLUCINATIONHALLUCINATIONHALLUCINATIONHALLUCINATIONHALLUCINATIONHALLUCINATIONHALLUCINATIONHALLUCINATIONHALLUCINATIONHALLUCINATIONHALLUCINATIONHALLUCINATIONHALLUCINATION";
int xx = 0;
int speed = 20;
int timer = 500; 
int currentTime = 0;
int savedTime=0;
int tX=0;
int circleSize = 0 ; // press O
int circleX = 200 ;
int circleY = 400 ;
int circle2X = 800 ;
int circle2Y = 400 ;
boolean button = false;

void setup(){
  size (1080,720);
  font = createFont ("Montserrat-ExtraBold.otf", 100);
  textFont(font); // to say we want it to show now  on the code
  imageH = loadImage("mousepressed-01.jpg");
  imageA= loadImage("mousepressed-02.jpg");
  imageL= loadImage("mousepressed-03.jpg");
  imageU= loadImage("mousepressed-04.jpg");
  imageC= loadImage("mousepressed-05.jpg");
  imageI= loadImage("mousepressed-06.jpg");
  imageN= loadImage("mousepressed-07.jpg");
  imageT= loadImage("mousepressed-08.jpg");
  imageO= loadImage("mousepressed-09.jpg");
  imageNN= loadImage("mousepressed-20.jpg");
  
}

//////////////////////////////////////////////////////
void draw(){

  background(233,10,0); 
  if(scene == 10){
  if(frameCount%(2*delay)<delay)
  background(255);
  textSize (100);
  fill (255);
  text (statement,110,300,1000,500);
  }
  
//////////////////////////////////////////////////////

// rollover H
  if (mouseX > 100 && mouseX < 180 && mouseY > 300 && mouseY < 396 ){
  background (0);
  textSize (100);
  text (statement2,110,300,1000,500);
  }
  // rollover A  
  if (mouseX > 180 && mouseX < 264 && mouseY > 300 && mouseY < 396 ){
  image (imageA,0,0);
}
  // rollover LL  
  if (mouseX > 264 && mouseX < 380 && mouseY > 300 && mouseY < 396 ){
  image (imageL,0,0);
}
  // rollover U  
  if (mouseX > 380 && mouseX < 450 && mouseY > 300 && mouseY < 396 ){
  image (imageU,0,0);
}
  // rollover C  
  if (mouseX > 450 && mouseX < 528 && mouseY > 300 && mouseY < 396 ){
  image (imageC,0,0);
}
  // rollover I  
  if (mouseX > 528 && mouseX < 564 && mouseY > 300 && mouseY < 396 ){
  image (imageI,0,0);
}
  // rollover N  
  if (mouseX > 564 && mouseX < 632 && mouseY > 300 && mouseY < 396 ){
  image (imageN,0,0);
}
  // rollover A  
  if (mouseX > 632 && mouseX < 710 && mouseY > 300 && mouseY < 396 ){
  image (imageA,0,0);
}
  // rollover T  
  if (mouseX > 710 && mouseX < 780 && mouseY > 300 && mouseY < 396 ){
  image (imageT,0,0);
}
  // rollover I  
  if (mouseX > 780 && mouseX < 804 && mouseY > 300 && mouseY < 396 ){
  image (imageI,0,0);
}
  // rollover O  
  if (mouseX > 804 && mouseX < 890 && mouseY > 300 && mouseY < 396 ){
  image (imageO,0,0);
}
  // rollover N  
  if (mouseX > 890 && mouseX < 965 && mouseY > 300 && mouseY < 396 ){
  image (imageNN,0,0);
}

//////////////////////////////////////////////////////

// SCENE ORDERS

  if(scene == 1) { // H
  background(200);
  textSize(30);  
  text (statement3,mouseX,mouseY,pmouseX,pmouseY);
  }
 
 if (scene == 2){ // A
   background (random(255),(random(255)),(random(255)));
   frameRate(10);
   fill (random(255),(random(255)),(random(255)));
   triangle (mouseX,mouseY,50,0,1030,0);  
   fill (random(255),(random(255)),(random(255)));
   textSize(1080);
   text ("A",120,720);
   noStroke();
 }
 
 if (scene == 3){ // L
   background (r,g,b); {
   if (mouseY < height/2) {
    b = b + 3;}  
   else {
    b = b - 3;}
  if (b > 255 ) {
   b = 255;}
  if (b < 0) { 
   b = 0 ;}
  fill (r,g,0);
  textSize (100);
  text ("REAL",230,400 );
  fill (r,g,255,80);
  textSize (100);
  text ("LIE",450,400 );
 }}
 
   if (scene == 6) { // I
   background (255);
   textSize (200);
   text("I", 500, 450 );
   xx = xx + speed;
   if ((xx > width) || (xx < 0)){
      speed = speed * -1 ;}
    fill (15);
    ellipse(xx,mouseY,50,50);
    ellipse(mouseX,xx,50,50);
    ellipse(xx, mouseX,50,50);
    textSize (15);
    text ("i will follow you : )", mouseX,mouseY);
  }
  
  if (scene == 4){ // U
     background (255);{         
     r = random(255);
     g = random(255);
     b = random(255);  
     a = random(255);    
     diam = random(650);
     x = random(width);
     y = random(height);
     noStroke ();
  fill(r,g,b,a);
  ellipseMode(CENTER);
  frameRate (10);
  ellipse(x,y,diam,diam);
  fill (255);
  textSize (150);
  text ("U",450,400 );
  text ("U",250,200 );
  text ("U",900,180 );
  text ("U",700,680 );
  text ("U",200,680 );
     }
 }

 
  if (scene == 5){ // C
  background(random (255)); {
  fill (random (255));
   textSize (100);
  text ("SEE",410,300,1000,500);

  if (mouseX < width/2){   // mouseX > 710 && mouseX < 780 && mouseY > 300 && mouseY < 396
   fill (random (255));
        textSize (100);
  text ("I" , 360,300,1000,500);}
  else {
  fill (random (255));
       textSize (100);
  text ("U" , 640,300,1000,500);}
  }}
 

   if (scene == 7){ // N - welcome to the END
   background (0); 
    textSize(20);  
  text ("click!",mouseX,mouseY,pmouseX,pmouseY);
   textSize (300);
   fill (0,229,200);
   text("THIS IS",0,210);
   fill (0,180,150);
   text("THE",0,420);
   if (button){
     text("...N",193,630);}
     else {
          fill (255,9,10);
         text("...N",193,630);}
          
   
 }
 
   if (scene == 8){ // T
   background (0);{
     textSize (100);
    text ("CAN",400,height/2); 
    currentTime = millis();
         textSize (100);
    text ("T",tX, height/2);
    if (currentTime-savedTime > timer) {
         savedTime=currentTime;
    tX = tX+20 ;
   fill(random(0,255), random (0,255), random (0,255));
  }
  
   }}
  
   if (scene == 9){ // O 
   background (255) ;
  noStroke ();
  fill (255,0,100,90) ;
  ellipse (circleX, circleY, circleSize, circleSize) ; // (where its strated , size of it)
  circleSize = circleSize + 1;
  circleX = circleX + 1 ;
  
  fill (20,280,224,90) ;
  ellipse (circle2X, circle2Y, circleSize, circleSize) ; // (2 nd circle where its strated , size of it)
  circleSize = circleSize + 1;
  circle2X = circle2X - 1 ;
  fill (255);
  textSize(30);
  text ("      YOU  FOUND        ME",450,350,130,250) ;
   }

}

void mousePressed ( ){
       
    if (scene == 4){ // U
    background (random(255));
    textSize (20);
       text ("WHERE R ",460,290); 
    }
   
    if (scene == 8){ // T
        tX = tX-20 ;}
   
    if (scene == 7){
      if (mouseX >  150 && mouseX < 700 && mouseY > 420 && mouseY <720 ){
        button = !button;
        scene = 10;
      }}
 }



//////////////////////////////////////////////////////

 
void keyPressed(){
  if (key == 'h'){
    scene = 1;
   }
  else if (key == 'a'){
    scene=2;
  }
    else if (key == 'l'){
    scene=3;
  }
    else if (key == 'u'){
    scene=4;
  }
    else if (key == 'c'){
    scene=5;
  }
    else if (key == 'i'){
    scene=6;
  }
    else if (key == 'n'){
    scene=7;  
  }
    else if (key == 't'){
    scene=8;
  }
    else if (key == 'o'){
    scene=9;
  }
     else if (key == ' '){
    scene=10;
  }

}


/////////////////////////////////////////////////////