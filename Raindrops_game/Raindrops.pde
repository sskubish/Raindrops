class Raindrops {
  //declare PVectors, iameer float, and integers for color
  PVector loc;
  PVector vel;
  PVector acc;
  float d;
  int r, g, b;
  int gameOver;
  Raindrops() {
    //give them values
    loc = new PVector(random(width), random(-d, 0));
    vel = new PVector(0, random(1, 6));
    acc = new PVector(0, random(3, 7));
    d = random(10, 50);
    r = 0;
    g = 0;
    b = 255;
    int gameOver = 0;
    run = true;
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
  //reset raindrops to the top if they fall off the screen (DISABLED)
  void endthegame() {
    if (loc.y >= height) {
      gameOver++;
      loc.x = 100000;
      if (gameOver >= 3) {
        run = false;
      }
    }
  }
  //make a raindrop disappear if it makes contact with the cathcher, add 1 to the score if this happens
  void goAway(Catcher c) {
    if (loc.dist(c.loc) < d/2+(c.d/2)) {
      loc = new PVector(width +1000, height);
      score ++;
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

