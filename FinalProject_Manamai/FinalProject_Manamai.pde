//Stereo...TYPE! 
/* type any letters to create your own rhythm and graphic, 
also they have some interactions with mouse too
...ENJOY!*/

import punktiert.math.Vec;
import punktiert.physics.*;
import processing.sound.*;

//------- stripe 
float curveWidth = 10.0;
float curveThickness = 10.0;
float angleOffset = 0.9;
float angleIncrement = map(mouseY, 0, height, 0.0, 0.2);
float angleA = 0.0;
float angleB = angleA + angleOffset; 
float k = map(mouseX, 0, width, 2.0, 4.0);

//-------- circle
int x;
int y;
int amount = 200;

String typedWord = "";

int i;
float rota;
int NUM = 30;
float[] a = new float[NUM];
float[] b = new float[NUM];
float[] c = new float[NUM];
float[] d = new float[NUM];

float[] as = new float[NUM];
float[] bs = new float[NUM];
float[] cs = new float[NUM];
float[] ds = new float[NUM];

char code=32;
float q=520.0;
int u=0;
int [][] j = new int [51][4];

VPhysics physics;

SoundFile soundA,soundB,soundC,soundD,soundE,soundF,soundG,soundH,
soundI,soundJ,soundK,soundL,soundM,soundN,soundO,soundP,soundQ,soundR,soundS,soundT,
soundU,soundV,soundW,soundX,soundY,soundZ;

//=========================================================================================================================

void setup() {
  size(1080 ,720);
  //  fullScreen(P3D);
  soundA = new SoundFile (this, "a.mp3"); soundB = new SoundFile (this, "b.mp3");
  soundC = new SoundFile (this, "c.mp3"); soundD = new SoundFile (this, "d.mp3");
  soundE = new SoundFile (this, "e.mp3"); soundF = new SoundFile (this, "f.mp3");
  soundG = new SoundFile (this, "g.mp3"); soundH = new SoundFile (this, "h.mp3");
  soundI = new SoundFile (this, "i.mp3"); soundJ = new SoundFile (this, "j.mp3");
  soundK = new SoundFile (this, "k.mp3");  soundL = new SoundFile (this, "l.mp3");
  soundM = new SoundFile (this, "m.mp3");  soundN = new SoundFile (this, "n.mp3");
  soundO = new SoundFile (this, "o.mp3");  soundP = new SoundFile (this, "p.mp3");
  soundQ = new SoundFile (this, "q.mp3");  soundR = new SoundFile (this, "r.mp3");
  soundS = new SoundFile (this, "s.mp3");  soundT = new SoundFile (this, "t.mp3");
  soundU = new SoundFile (this, "u.mp3");  soundV = new SoundFile (this, "v.mp3");
  soundW = new SoundFile (this, "w.mp3");  soundX = new SoundFile (this, "x.mp3");
  soundY = new SoundFile (this, "y.mp3");  soundZ = new SoundFile (this, "z.mp3");

  //punktiert library
  physics = new VPhysics(width, height);
  physics.setfriction(.1f);
  
  for (int i = 0; i < amount; i++) { // bubble main scene  
    //val for arbitrary radius
    float rad = random(5, 20);
    //vector for position
    Vec pos = new Vec (random(rad, width-rad), random(rad, height-rad));
    //create particle (Vec pos, mass, radius)
    VParticle particle = new VParticle(pos, 1, rad);
    //add Collision Behavior
    particle.addBehavior(new BCollision());
    //add particle to world
    physics.addParticle(particle);
  }
  
  fill(255, 50); // matrix text

  textAlign(CENTER, CENTER);
   for (int p=1; p<=50; p++) {
    j[p][1]=int(random(0, 30))*20;
    j[p][2]=int(random(0, 60))*20;
  }
   for ( int i = 0; i < NUM; i++){ // line falling
    a[i] = width/2;
    b[i] = height/2;
    c[i] = width/2;
    d[i] = height/2;
    as[i] = random(8);
    bs[i] = random(8);
    cs[i] = random(8);
    ds[i] = random(8);
  }
  
  smooth();
}

// ==============================================================================================================================

void draw() {
  textAlign(CENTER);
  textSize(150);
  background (0);
  fill (random (255),random (255),random (255)); // typing text color
  text(typedWord, 510, height/2);  // typing area

 // bubble main scene 
  physics.update();
  for (VParticle p : physics.particles) {
  fill(random (255));
  ellipse(p.x, p.y, p.getRadius()*2, p.getRadius()*2);
  }
  
  if(mousePressed ) { // mouse presses to create bubble
    frameRate(150);
    physics.addParticle(new VParticle(new Vec(mouseX, mouseY),1, random(5,15)).addBehavior(new BCollision()));
  }
  
  if ((key=='a')||(key =='o')||(key =='i')||(key=='e')||(key=='u')) { // type 'a' creates text cirle
  textSize(90);
  pushMatrix();
  translate(mouseX, mouseY);
  rotate(rota);
  roseton (0, 0);
  popMatrix();
  rota = rota-5;
  fill(0, 50);
  rect(0, 0, width, height);
}

  if ((key=='k')||(key =='q')||(key =='w')||(key=='v')||(key=='j') ) { // color line random
  stroke(0,100,255,5);
  strokeWeight(20);
  line(0,random(height),width,random(height));
    stroke(0,255,0,90);
  strokeWeight(20);
  line(0,random(height),width,random(height));
    stroke(255,50,0,90);
  strokeWeight(10);
  line(0,random(height),width,random(height));
  noStroke();
}

 if ((key =='g')||(key=='x')||(key=='f')||(key=='d')||(key =='r')){ // matrix text 
    pushMatrix();
    frameRate(15);
    textSize(30);
  //fill(0, 0, 0, 50);
  //rect(-1200, -600, 3600, 1800);
  popMatrix();
  for (int p=1; p<=50; p++) {
    //fill(0);
    //rect(j[p][2]-10, j[p][1]-10, 20, 20);
    fill(0, 205, 0);
    text(char(int(random(32, 123))), j[p][2], j[p][1]);
    j[p][1]=j[p][1]+25;
    if (j[p][1]>height) {
      j[p][1]=int(random(0, 15))*20;
      j[p][2]=int(random(0, 60))*20;
    }
  }}
   
  
   if ((key == 't')||(key =='c')||(key =='m')||(key=='b') ||(key=='h')) {  // line falling
   for ( int i = 0; i < NUM; i++){
     a[i] += as[i];
     b[i] += bs[i];
     c[i] += cs[i];
     d[i] += ds[i];  
  stroke(random (255),random (255),random (255));
  strokeWeight (2);
  line(a[i] , b[i] , c[i]  , d[i] );   
  if ( a[i] > width ) a[i] = 0; if ( b[i] > width ) b[i] = 0;
  if ( c[i] > width ) c[i] = 0; if ( d[i] > width ) d[i] = 0;
  if ( a[i] < 0 ) a[i] = width; if ( b[i] < 0 ) b[i] = height;
  if ( c[i] < 0 ) c[i] = width; if ( d[i] < 0 ) d[i] = height;
  noStroke();
  } }
 
  if ((key == 's') || (key == 'z')||(key == 'l')||(key=='n')||(key =='p')||(key=='y')) { 
  for (int i = 0; i < height; i += curveWidth*k) {
    float waveColor = map(i, 0, mouseY+10, 0, 255);
    noStroke();
    pushMatrix();
    translate(0, 320);
    fill(waveColor,60);
    beginShape(QUAD_STRIP);
  for (int x = 0; x <= width; x += 10) {
      //float y1 = i + (sin(angleA)* curveWidth);
      //float y2 = i + (sin(angleB)* curveWidth);
      float y1 = i + (sin(angleB) * curveWidth);
      float y2 = i + (cos(angleA) * curveWidth);
      vertex(x, y1);
      vertex(x, y2 + curveThickness);
      angleA += angleIncrement;
      angleB = angleA + angleOffset;
    }
    endShape(); 
    pushMatrix();
    scale(1.0, -1.0);
    beginShape(QUAD_STRIP);
    for (int x = 0; x <= width; x += 10) {
      //float y1 = i + (sin(angleA)* curveWidth);
      //float y2 = i + (sin(angleB)* curveWidth);
      float y1 = i + (sin(angleB) * curveWidth);
      float y2 = i + (cos(angleA) * curveWidth);
      vertex(x, y1);
      vertex(x, y2 + curveThickness);
      angleA += angleIncrement;
      angleB = angleA + angleOffset;    }
    endShape();
    popMatrix();
    popMatrix();
  } 
}
}

// ==============================================================================================================================

  void roseton(int x, int y) { // text in 'a' circle
  for (int i=0; i<12; i++) {
    fill(200, random(255), 50);
    textAlign(RIGHT);
    pushMatrix();
    translate(x, y);
    rotate(PI*i/6);
    text("๐๐ooO", mouseX, mouseY);
    popMatrix();
    textAlign(CENTER);
  }}    

// ==============================================================================================================================

void keyPressed() { // for typing text
  //println(key);
  if (key != 65535) {
  if (keyCode == BACKSPACE) {
  if (typedWord.length() > 0) {
    typedWord = typedWord.substring(0, typedWord.length()-1); //erases the last character
  }   

  physics = new VPhysics(width, height);   // ball background
  physics.setfriction(.1f);
  
  for (int i = 0; i < amount; i++) { 
    //val for arbitrary radius
    float rad = random(5, 10);
    //vector for position
    Vec pos = new Vec (random(rad, width-rad), random(rad, height-rad));
    //create particle (Vec pos, mass, radius)
    VParticle particle = new VParticle(pos, 1, rad);
    //add Collision Behavior
    particle.addBehavior(new BCollision());
    //add particle to world
    physics.addParticle(particle);
  } 
  }
    else {
  typedWord += key; //add the key to the word
  }
  }
  }

// ==============================================================================================================================

void keyReleased() {
    if( key == ' ' ) {
    physics.addParticle(new VParticle(new Vec(mouseX, mouseY),2, random(5,15)).addBehavior(new BCollision()));
  }
     if ((key == 'a') || (key == 'A')) {
       soundA.loop();}
     if ((key == 'b') || (key == 'B')) {
       soundB.loop(); }
     if ((key == 'c') || (key == 'C')) {
       soundC.loop(); }
     if ((key == 'd') || (key == 'D')) {
       soundD.loop(); }
     if ((key == 'e') || (key == 'E')) {
       soundE.loop(); }
     if ((key == 'f') || (key == 'F')) {
       soundF.loop(); }
     if ((key == 'g') || (key == 'G')) {
       soundG.loop(); }
     if ((key == 'h') || (key == 'H')) {
       soundH.loop(); }
     if ((key == 'i') || (key == 'I')) {
       soundI.loop(); }
     if ((key == 'j') || (key == 'J')) {
       soundJ.loop(); }
     if ((key == 'k') || (key == 'K')) {
       soundK.loop(); }
     if ((key == 'l') || (key == 'L')) {
       soundL.loop(); }
     if ((key == 'm') || (key == 'M')) {
       soundM.loop(); }
     if ((key == 'n') || (key == 'N')) {
       soundN.loop(); }
     if ((key == 'o') || (key == 'O')) {
       soundO.loop(); }
     if ((key == 'p') || (key == 'P')) {
       soundP.loop(); }
     if ((key == 'q') || (key == 'Q')) {
       soundQ.loop(); }
     if ((key == 'r') || (key == 'R')) {
       soundR.loop(); }
     if ((key == 's') || (key == 'S')) {
       soundS.loop(); }
     if ((key == 't') || (key == 'T')) {
       soundT.loop(); }
     if ((key == 'u') || (key == 'U')) {
       soundU.loop(); }
     if ((key == 'v') || (key == 'V')) {
       soundV.loop(); }
     if ((key == 'w') || (key == 'W')) {
       soundW.loop(); }
     if ((key == 'x') || (key == 'X')) {
       soundX.loop(); }
     if ((key == 'y') || (key == 'Y')) {
       soundY.loop(); }
     if ((key == 'z') || (key == 'Z')) {
       soundZ.loop(); }
       
}