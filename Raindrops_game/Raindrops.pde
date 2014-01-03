class Raindrops {
  //declare PVectors, diameter float, and integers for color
  PVector loc;
  PVector vel;
  PVector acc;
  float d;
  int r, g, b;
  Raindrops() {
    //give them values, random height above the screen so instead of one at a time they come in groups
    loc = new PVector(random(25, width-25), random(-d, 0));
    vel = new PVector(0, random(2, 7));
    acc = new PVector(0, random(3, 7));
    d = random(10, 50);
    r = 0;
    g = 0;
    b = 255;
    int gameOver = 0;
    lives = 3;
  }
  //display the raindrops
  void display() {
    fill(r, g, b);
    ellipse(loc.x, loc.y, d, d);
  }
  //make them move down
  void move() {
    loc.add(vel);
  }
  //reset raindrops to above the top if they fall past the catcher and reset 200 above the window to prevent instant game over
  void endthegame() {
    if (loc.y >= height) {
      loc = new PVector(random(0, width-25), -200);
      lives += -1;
      gameOver += 1;
    }
  }
  //make a raindrop disappear if it makes contact with the cathcher, add 1 to the score if this happens, random chance for caught drops to reappear later if game is on normal difficulty
  void goAway(Catcher c) {
    if (loc.dist(c.loc) < d/2+(c.d/2) && normal == true) {
      loc.set(random(25, width-25), -100);
      acc.set(0, random(0, 1));
      vel.set(0, random(0, 1));
      score ++;
    }
    if (loc.dist(c.loc) < d/2+(c.d/2) && easy == true) {
      loc.set(0, -100);
      acc.set(0, 0);
      vel.set(0, 0);
      score ++;
    }
  }
}
