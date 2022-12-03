PImage logo;
int pantalla = 0;
int totalTails = 0;
ArrayList<Tail> tails;
Snake snake;
Apple apple;

void setup(){
  frameRate(7);
  
  //Size screen
  fullScreen();
  surface.setLocation(650, 100);
  surface.setSize(650, 850);
  
  //Logo
  logo = loadImage("logo.png");
  
  //Init Class
  snake = new Snake();
  apple = new Apple();
  tails = new ArrayList<Tail>();
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
    }
    
    if (mouseX >= 50 && mouseY >= 525 && mouseX <= 600 && mouseY <= 625 ){
      pantalla = 2;
    }
  }
  
  if(pantalla == 2){
    if (mouseX >= 25 && mouseY >= 10 && mouseX <= 175 && mouseY <= 60 ){
      pantalla = 0;
    }
  }
}
