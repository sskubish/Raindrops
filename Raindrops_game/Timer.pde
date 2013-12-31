class Timer {
  void setup() {
  }
  //display timer in the upper left(DIASABLED) that changes the background to a random color every 2 seconds, only serves as a background color changer now
  boolean run() {
    background(c);
    currentTime = millis();
    timeDifference = currentTime - oldTime;
    //display time, (DISABLED)
    //text(millis()/1000, width/16, height/8);
    if (timeDifference >= 2000) {
      c = color(random(255), random(255), random(255));
      oldTime = currentTime;
      return true;
    }
    else
      return false;
  }
}
