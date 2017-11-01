// superman is flying through the clouds

Superman[] superman = new Superman[1];
Cloud[] mycloud = new Cloud[15];
PImage man;
PImage sky;


void setup(){
  size(1080,720);
  //initialize objects by calling the constructor with for loop
  man = loadImage("man.png");
sky = loadImage("sky.jpg");

  for(int i=0; i<superman.length; i++){
    superman[i] = new Superman (int(random(width)), int (random(height)), 50);
  }
    for(int i=0; i<mycloud.length; i++){
    mycloud[i] = new Cloud (int(random(width)), int (random(height)), 65);
  
  }}


void draw (){

 background (255);
   for (int i=0; i < superman.length; i++){
   superman[i].display();
   superman[i].up();
  }
  
     for (int i=0; i < mycloud.length; i++){
     mycloud[i].display();
          mycloud[i].fall();
  
}}