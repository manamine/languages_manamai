//HALUCINATION

float r ;
float g ;
float b ;
int scene = 10;
PFont font;
PImage img;
String statement = "HALLUCINATION";
String statement2 = "H                i          i  ";

void setup(){
  size (1080,720);
  font = createFont ("Montserrat-ExtraBold.otf", 100);
  textFont(font); // to say we want it to show now  on the code
  img = loadImage("mousepressed-02.jpg");
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
  image (img,0,0);
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