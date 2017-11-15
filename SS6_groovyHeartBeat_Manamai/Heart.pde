// Example 20-2: Doorbell with Sonia

// A Class to describe a "doorbell" (really a button)
class Heart {
  // Location and size
  float x;
  float y;
  float r;

  // Create the doorbell
  Heart(float x_, float y_, float r_) {
    x = x_;
    y = y_;
    r = r_;
  }

  // Is a point inside the doorbell? (used for mouse rollover, etc.)
  boolean contains(float mx, float my) {
    if (dist(mx, my, x, y) < r) {
      return true;
    } else {
      return false;
    }
  }

  // Show the doorbell (hardcoded colors, could be improved)
  void display(float mx, float my) {
    if (contains(mx, my)) {
      strokeWeight(1);
  noStroke();
  fill(228,0,70);
  ellipse(width/2-100,height/2-100,250,250);
  ellipse (width/2+100,height/2-100,250,250);
  ellipse(width/2,height/2,100,100);
  triangle(width/2,height/2+150,width/2-175,height/2,width/2+175,height/2);
  
    } else {
     strokeWeight(1);
  noStroke();
  fill(228,0,255);
  ellipse(width/2-100,height/2-100,250,250);
  ellipse (width/2+100,height/2-100,250,250);
  ellipse(width/2,height/2,100,100);
  triangle(width/2,height/2+150,width/2-175,height/2,width/2+175,height/2);
  
  }
  }}