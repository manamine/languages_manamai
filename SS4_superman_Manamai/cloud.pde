class Cloud{
  
int x;
int y;
int diameter;


//constructor
Cloud (int tempX, int tempY, int tempDiameter){ // temporary position
  x= tempX;
  y= tempY;
  diameter = tempDiameter;
}

void display (){
noStroke();
fill (255,99);
 ellipse (x+25,y,200,diameter);
  ellipse (x+90,y+15,150,diameter);
}


void fall (){ // cloud fall
  if ( y>height+100){
    y = -100; }
    else {
      y++;
    }
}}