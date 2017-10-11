//HALUCINATION

float r ;
float g ;
float b ;
int scene = 10;
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
String statement = "HALLUCINATION";
String statement2 = "H                i          i  ";

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
}

//////////////////////////////////////////////////////
void draw(){
  background (random (150));



  if(scene == 10){
  text (statement,110,300,1000,500);
}
  else if (scene == 1){
   background (0);
  text (statement2,110,300,1000,500);
 }
  else if (scene == 2){
  image (imageA,0,0);
 }
  else if (scene == 3){
  image (imageL,0,0);
 }
  else if (scene == 4){
  image (imageU,0,0);
 }
  else if (scene == 5){
  image (imageC,0,0);
 }
  else if (scene == 6){
  image (imageI,0,0);
 }
  else if (scene == 7){
  image (imageN,0,0);
 }
  else if (scene == 8){
  image (imageT,0,0);
 }
   else if (scene == 9){
  image (imageO,0,0);
 }
}
 //////////////////////////////////////////////////////
 
void keyPressed(){
  if (key == 'h'){
    scene=1;
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
//////////////////////////////////////////////////////
