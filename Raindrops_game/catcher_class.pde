class Catcher {
  PVector loc;
  float d;
  Catcher() {
    d = 50;
    loc = new PVector(mouseX, height-(height/8));
    loc = new PVector(mouseX, height-(height/8));
  }
  void display() {
    loc.set(mouseX, height-(height/8));
    loc.set(mouseX, height-(height/8));
    fill(255, 0, 0);
    ellipse(loc.x, loc.y, d, d);
  }
}
