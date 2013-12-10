class Catcher {
 //declare PVector for location and float for the diameter of the catcher
  PVector loc;
  float d;
  Catcher() {
    d = 50;
    loc = new PVector(mouseX, height-(height/8));
    loc = new PVector(mouseX, height-(height/8));
  }
  //display the catcher at mouseX for the x value and a set y value 
  void display() {
    loc.set(mouseX, height-(height/8));
    loc.set(mouseX, height-(height/8));
    fill(255, 0, 0);
    ellipse(loc.x, loc.y, d, d);
  }
}
