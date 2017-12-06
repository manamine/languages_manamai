import punktiert.math.Vec;
import punktiert.physics.*;
import processing.sound.*;

int x;
int y;

String typedWord = "";
String[] sounds = {"a"," b", "c"}; 
SoundFile sound;

void setup() {
  size(1080 ,720);
  fill(255);
  sound = new SoundFile (this, "a.wav");
}



void draw() {
  background(0);
  textSize(100);
  fill (random (255),random (255),random (255));
  text(typedWord, 250, height/2);  
}

void keyPressed() {
  //println(key);
  if (key != 65535) {
    if (keyCode == BACKSPACE) {
  if (typedWord.length() > 0) {
    typedWord = typedWord.substring(0, typedWord.length()-1); //erases the last character
  }
    }
    else {
  typedWord += key; //add the key to the word
    }
    
  }
  }