// Connecting people
// drag your mouse and write the word love (in hand writing) between from boy to girl
// or press any keys to disconnect them!!!


void setup() {
 size(1080,720);
 background(255,126,143);
  //boy
  fill (250,240,30);
  noStroke();
  ellipse(150,500,200,200);
  noStroke();
  fill(0);
  ellipse(250,500,10,10); // eyes
  fill(0);
  ellipse(170,500,10,10); // eyes
  
  //girl
  fill (250,240,30);
  noStroke();
  ellipse(900,200,200,200);
  fill(255,0,0);
  triangle(850,150,920,60,920,150);
  fill(255,0,0);
  triangle(980,190,990,80,920,150);
  noStroke();
  fill(0);
  ellipse(950,200,10,10); // eyes
  fill(0);
  ellipse(850,200,10,10); // eyes
  
}

void mousePressed() {
  fill(255,0,0);
  noStroke ();
  ellipse(mouseX,mouseY,20,20);
}

void mouseDragged() {
  strokeWeight(3);
  stroke(255);
  line(mouseX,mouseY,pmouseX,pmouseY);
}

void mouseReleased(){
  fill(0,0,255);
  noStroke();
  ellipse(mouseX,mouseY,20,20);
}

void draw (){

}

void keyPressed() {
  int r = int(random(255));
  int g = int(random(255));
  int b = int(random(255));
  background(r,g,b);
  
    //boy
  fill (250,240,30);
  noStroke();
  ellipse(150,500,200,200);
  noStroke();
  fill(0);
  ellipse(250,500,10,10); // eyes
  fill(0);
  ellipse(170,500,10,10); // eyes
  
  //girl
  fill (250,240,30);
  noStroke();
  ellipse(900,200,200,200);
  fill(255,0,0);
  triangle(850,150,920,60,920,150);
  fill(255,0,0);
  triangle(980,190,990,80,920,150);
  noStroke();
  fill(0);
  ellipse(950,200,10,10); // eyes
  fill(0);
  ellipse(850,200,10,10); // eyes
  

}