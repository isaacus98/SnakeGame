void Menu(){
  background(45, 53, 65);
  
  //Title
  fill(106, 179,64);
  textSize(100);
  text("Snake Game", 65, 200);
  
  //Botons menu
  button(50, 400, 550, 100, 30);
  textButton(250, 475, 75, "Play");
  button(50, 525, 550, 100, 30);
  textButton(200, 600, 75, "Ranking");
  button(50, 650, 550, 100, 30);
  textButton(240, 725, 75, "Sortir");
  
}

void Game(){
  background(45, 53, 65);
  
  generateApple();
  snake.show();
  snake.move();
  snakeEatApple();
  followTail();
}

void Ranking(){
  background(45, 53, 65);
}
