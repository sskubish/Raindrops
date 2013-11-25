class Raindrops {
  PVector loc;
  PVector vel;
  PVector acc;
  float d;
  int r, g, b;
  Raindrops() {

    loc = new PVector(random(width), random(-500, 0));
    vel = new PVector(0, random(1, 6));
    acc = new PVector(0, random(-1, 1));
    d = random(50);
    r = 0;
    g = 0;
    b = 255;
  }
  void display() {
    fill(r, g, b);
    ellipse(loc.x, loc.y, d, d);
  }
  void move() {
    loc.add(vel);
  }
  void reset() {
    if (loc.y >= height) {
      loc.y = 0;
      vel.set(0, random(1, 6));
    }
  }
  void circleCheck(Catcher c) {
    if (loc.dist(c.loc) < d/2+(c.d/2)) {
       r = 93;
       g = 7;
       b = 185;
    }
  }
}
