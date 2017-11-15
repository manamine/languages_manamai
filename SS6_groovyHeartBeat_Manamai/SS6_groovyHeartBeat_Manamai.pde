// groovy heartbeat

import processing.sound.*;

// A sound file object
SoundFile groove;

// A doorbell object (that will trigger the sound)
Heart doorbell;

void setup() {

size(720, 680);
background(61,76,135);




  // Load the sound file
  groove = new SoundFile(this, "doorbell.mp3");

  // Create a new doorbell
  doorbell = new Heart(width/2, height/2, 64);
}

void draw() {
  frameRate (2);
  background(random (255), random(255),random (255));

  // Show the doorbell
  doorbell.display(mouseX, mouseY);
}

void mousePressed() {
  // If the user clicks on the doorbell, play the sound!
  if (doorbell.contains(mouseX, mouseY)) {
    groove.play();
    background(random(255));
  }

}