class Raindrops {
  //declare PVectors, iameer float, and integers for color
  PVector loc;
  PVector vel;
  PVector acc;
  float d;
  int r, g, b;
  int lives;
  Raindrops() {
    //give them values, random height above the screen so instead of one at a time they come in groups
    loc = new PVector(random(width), random(-d, 0));
    vel = new PVector(0, random(1, 6));
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
  //reset raindrops to above the top if they fall past the catcher and resest 200 above the window
  void endthegame() {
    if (loc.y >= height) {
      loc = new PVector(random(width), -200);
      gameOver += 1;
    }
  }
  //make a raindrop disappear if it makes contact with the cathcher, add 1 to the score if this happens, text displaying lives
  void goAway(Catcher c) {
    if (loc.dist(c.loc) < d/2+(c.d/2)) {
      loc = new PVector(random(width), -200);
      loc.set(0, 0);
      acc.set(0, 0);
      vel.set(0, 0);
      score ++;
      lives += -1;
    }
  }

  //testing/base code

  //  void score(Catcher c) {
  //    if (loc.dist(c.loc) < d/2+(c.d/2)) {
  //      score++;
  //      text(score, width - width/8, height/8);
  //    }
  //    else {
  //      score = 0;
  //    }
  //  }
}

