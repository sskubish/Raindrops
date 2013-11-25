Raindrops[] D1 = new Raindrops[25];
Catcher C1;
void setup() {
  C1 = new Catcher();
  for (int i = 0; i < D1.length; i++) {
    D1[i] = new Raindrops();
    size(800, 800);
  }
}

void draw() {
  background(0);
  C1.display();
  for (int i = 0; i < D1.length; i++) {
    D1[i].display();
    D1[i].move();
    D1[i].reset();
    D1[i].circleCheck(C1);
  }
}
