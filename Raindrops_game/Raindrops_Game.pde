//declare all the classes and the int for the score 
Raindrops[]  R1 = new Raindrops[2000];
Catcher C1;
Timer T1;
Gameover G1;
boolean run;
int score;
int index = 0;
int time = 0;
//give the array Raindrops a value with a for loop
//give other classes that need value their value
void setup() {
  C1 = new Catcher();
  for (int i = 0; i < R1.length; i++) {
    R1[i] = new Raindrops();
    size(800, 800);
    T1 = new Timer();
    textSize(100);
    G1 = new Gameover();
  }
}
void draw() {
  //run the timer
  T1.run();
  //show the cather
  C1.display();
  //for loop fo array purposes of the raindrops
  for (int i = 0; i < index; i++) {
    R1[i].display();
    R1[i].move();
    R1[i].endthegame();
    R1[i].goAway(C1);
  }
  if (millis() >= time)
  {      
    time+=3000;
    index++;
  }
  //display score that increses because of goAway in the raindrops class
  text("score "+ score, width/2-50, height/2);
  G1.gameover();
}

