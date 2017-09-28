// Polite way to say NO
// from last week assignment, now let's press and drag mouse from boy to girl 
// and see he says something to her, you can see her answer if your mouse released!
// or press any keys to replay.

String statement = "HELLO GIRL";
String statement2 = "CAN I CALL YOU TONIGHT?";
String statement3 = "The number you dialed is not in service!!";


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
   fill (255);
   textSize(20);
   text(statement3,900,600,300,200);
}

void draw (){
 
  if (mouseX > width/2) {
    fill(135,40,40);
    textSize(40);
    text(statement2,width/2,height/2,200,200);
  }
  
  else if (mouseY > height/2) {
    rectMode(CENTER);
    fill(255,0,0);
    textSize(50);
    text(statement,width/2,height/2,400,400);
  }
 
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
