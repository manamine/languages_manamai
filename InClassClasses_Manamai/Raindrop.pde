class Raindrop {

int x;
int y;
int diameter;

 Raindrop (int tempX, int tempY, int tempDiameter){ // temporary position
  x= tempX;
  y= tempY;
  diameter = tempDiameter;
}

void display (){
image(raindrop,mouseX,y);

}

void fall (){
  if ( y>height+100){
    y = -100; }
    else {
      y++;
    }
}

void heavy (){
      if (key == ' '){
        frameRate(300);
  if ( y>height+100){
    y = -100; }
    else {
      y++;

    }}}}