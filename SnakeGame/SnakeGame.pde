int pantalla = 0;
int totalTails = 0;
Boolean isGame;
PImage logo;
PImage back;
PImage[] controls;
String[] scores;
ArrayList<Tail> tails;
Snake snake;
Apple apple;

void setup(){
  frameRate(7); //Framerate = 7
  
  //Size screen
  fullScreen();
  surface.setLocation(650, 100);
  surface.setSize(650, 850);
  
  //load images
  logo = loadImage("logo.png");
  back = loadImage("back.png");
  
  controls = new PImage[4];
  controls[0] = loadImage("keyLeft.png");
  controls[1] = loadImage("keyUp.png");
  controls[2] = loadImage("keyDown.png");
  controls[3] = loadImage("keyRight.png");
  
  //Init Class
  snake = new Snake();
  apple = new Apple();
  tails = new ArrayList<Tail>();
  
  //Load file score
  scores = loadStrings("score.txt");
  
  
}

void draw(){
  switch(pantalla){
    case 0:
      Menu();
      break;
    case 1:
      Game();
      break;
    case 2:
      Ranking();
      break;
  }
}

void mouseClicked(){
  if(pantalla == 0){
    if (mouseX >= 50 && mouseY >= 650 && mouseX <= 600 && mouseY <= 750 ){
      exit();
    }
    
    if (mouseX >= 50 && mouseY >= 400 && mouseX <= 600 && mouseY <= 500 ){
      pantalla = 1;
      isGame = true;
    }
    
    if (mouseX >= 50 && mouseY >= 525 && mouseX <= 600 && mouseY <= 625 ){
      pantalla = 2;
      isGame = false;
    }
  }
  
  if(pantalla == 2){
    if (mouseX >= 10 && mouseY >= 10 && mouseX <= 60 && mouseY <= 60 ){
      pantalla = 0;
      restart();
    }
  }
}
