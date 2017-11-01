class Superman {
//instance variables
int x;
int y;
//int diameter;

//constructor
Superman (int tempX, int tempY, int tempDiameter){ // temporary position
  x= tempX;
  y= tempY;
//  diameter = tempDiameter;
}

void display (){
    imageMode(CENTER);
  image (sky,540,360);

    image(man,mouseX,y);
}

void up (){ // superman is flying
  frameRate(120);
    if ( y<0 ){
    y = height; }
    else {
      y--;
    }}
}