class Raindrops {
  PVector loc;
  PVector vel;
  PVector acc;
  float d;
  Raindrops() {

    loc = new PVector(random(width), random(-500, 0));
    vel = new PVector(0, random(1, 6));
    acc = new PVector(0, random(-1, 1));
    d = random(50);
  }
  void display() {
    fill(0, 0, 255);
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
  void cicleCheck(Catcher Catcher) {
   if(dist(dist(loc.x,loc.y,Catcher.loc.x,Catcher.loc.y) < d/2+Catcher.d/2));
  }
}

