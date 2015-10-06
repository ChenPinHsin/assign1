/* please implement your assign1 code in this file. */
int bgX, hpL, tX, tY, eX, eY;
PImage fighter;
PImage enemy;
PImage treasure;
PImage bg1, bg2;
PImage hpBar;

void setup () {
  size(640, 480);
  bgX = 0;
  hpL = floor(random(10, 195));
  tX = floor(random(10, 620));
  tY = floor(random(20, 460));
  eX = 0;
  eY = floor(random(20, 460));
  fighter = loadImage("img/fighter.png");
  enemy = loadImage("img/enemy.png");
  treasure = loadImage("img/treasure.png");
  bg1 = loadImage("img/bg1.png");
  bg2 = loadImage("img/bg2.png");
  hpBar = loadImage("img/hp.png");
}

void draw() {
  //background
  background(0);
  image(bg1, bgX, 0);
  image(bg2, bgX-640, 0);
  image(bg1, bgX-1280, 0);
  bgX++;
  bgX%= 1280;
  
  //hpBar
  fill(255, 0, 0);
  rect(20, 20, hpL, 30, 7);
  image(hpBar, 10, 20);
  
  //treasure
  image(treasure, tX, tY);
  
  //enemy
  image(enemy, eX, eY);
  eX+=4;
  eX%= 640;
  
  //fighter
  image(fighter,mouseX,mouseY);
}
