int pantalla = 0;

void setup(){
  frameRate(10);
  
  //Size screen
  fullScreen();
  surface.setLocation(650, 100);
  surface.setSize(650, 850);
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
