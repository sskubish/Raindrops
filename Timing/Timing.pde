int currentTime =0;
int  oldTime = 0;
int timeDifference= 0;
color c = color(0);
void setup() {
  size(800, 800);
  textSize(100);
}

void draw() {
  background(c);
  currentTime = millis();
  timeDifference = currentTime - oldTime;
  text(millis()/1000, width/16, height/8);
  if (timeDifference >= 2000) {
    c = color(random(255), random(255), random(255));
    oldTime = currentTime;
  }
}
