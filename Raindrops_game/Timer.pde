class Timer {
  int currentTime =0;
  int  oldTime = 0;
  int timeDifference= 0;
  color c = color(0);
  void setup() {
  }
  //display timer in the upper right that changes the background to a random color every 2 seconds
  boolean run() {
    background(c);
    currentTime = millis();
    timeDifference = currentTime - oldTime;
    text(millis()/1000, width/16, height/8);
    if (timeDifference >= 2000) {
      c = color(random(255), random(255), random(255));
      oldTime = currentTime;
      return true;
    }
    else
      return false;
  }
}

