//declare all the classes and the int for the score
Raindrops[]  R1 = new Raindrops[2000];
Catcher C1;
Timer T1;
Gameover G1;
int score;
int index = 0;
int time = 0;
boolean run;
boolean start;
int currentTime =0;
int  oldTime = 0;
int timeDifference= 0;
color c = color(0);
int gameOver;
int lives;
PImage winningmove;
boolean normal;
boolean easy;
//give the array Raindrops a value with a for loop
//give other classes that need value their value
void setup() {
  C1 = new Catcher();
  for (int i = 0; i < R1.length; i++) {
    R1[i] = new Raindrops();
    size(800, 800);
    T1 = new Timer();
    textSize(50);
    G1 = new Gameover();
    run = true;
    start = false;
    lives = 3;
    winningmove = loadImage("winningmove.jpg");
    normal = false;
    easy = false;
  }
}
void draw() {
  if (start == false) {
    //start button/screen
    background(0);
    fill(0, 0, 200);
    rectMode(CENTER);
    rect(width/2, 200, 400, 200);
    rect(width/2, 600, 400, 200);
    fill(200, 0, 0);
    textAlign(CENTER);
    text("Start (normal)", width/2, 200);
    text("Start (easy)", width/2, 600);
  }
  //start the game with a mousepress
  if (mousePressed && mouseX >= 200 && mouseX <= 500 && mouseY >= 100 && mouseY <= 300) {
    start = true;
    normal = true;
    textSize(100);
  }
  if (mousePressed && mouseX >= 200 && mouseX <= 500 && mouseY >= 500 && mouseY <= 700) {
    start = true;
    easy = true;
    textSize(100);
  }
  //runs if start = true which is when the mouse is pressed
  if (start == true) {
    //run the timer
    T1.run();
    //show the cather
    C1.display();
    //for loop for array purposes/raindrops
    for (int i = 0; i < index; i++) {
      R1[i].display();
      R1[i].move();
      R1[i].endthegame();
      R1[i].goAway(C1);
      if (run == false) {
        R1[i].loc.set(0, 0);
        R1[i].acc.set(0, 0);
        R1[i].vel.set(0, 0);
      }
    }
    if (timeDifference >= 2000) {
      index++;
    }
    //display score that increses because of goAway in the raindrops class
    textSize(50);
    text("score: "+ score, width-200, 200);
    text("lives:" + lives, width-200, 100);
    G1.gameover();
  }
  if (gameOver >= 3) {
    run = false;
  }
}

