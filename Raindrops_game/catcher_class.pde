class Catcher {
  PVector loc;
  float d;
  Catcher() {
    d = 50;
  }
  void display() {
    loc = new PVector(mouseX, height-(height/8));
    loc = new PVector(mouseX, height-(height/8));
    fill(93,7,185);
    ellipse(loc.x, loc.y, d, d);
  }
}

