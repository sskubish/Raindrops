class Gameover {
  Gameover() {
  }
  void gameover() {
    if (run == false) {
      background(0);
      textAlign(CENTER);
      textSize(100);
      text("GAME OVER", width/2, height/2);
      text ("score: "+ score, width/2, height/2+100);
      imageMode(CENTER);
      image(winningmove, width/2, 140);
    }
  }
}
