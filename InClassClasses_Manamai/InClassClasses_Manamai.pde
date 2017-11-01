// Sorry I was struggle with some undefine constructor
// originall class rain by Ellen
// methods I added "fall", "heavy"
// Title : after the rain

Raindrop[] raindrops = new Raindrop[10];
PImage raindrop;
float delay = 50;

void setup(){
  size(1080,720);
      raindrop = loadImage("raindrops6.png");
  for(int i=0; i<raindrops.length; i++){
    raindrops[i] = new Raindrop (int(random(width)), int (random(height)), 10);

  }
}

void draw (){
  background(0);


  for (int i=0; i < raindrops.length; i++){
    raindrops[i].display();
        raindrops[i].fall();
        raindrops[i].heavy();
  }
}