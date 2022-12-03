void Menu(){
  background(45, 53, 65);
  
  //Logo
  image(logo, 50, 100, 550, 150);
  
  //Botons menu
  button(50, 400, 550, 100, 30);
  textButton(260, 475, 75, "Play");
  button(50, 525, 550, 100, 30);
  textButton(200, 600, 75, "Ranking");
  button(50, 650, 550, 100, 30);
  textButton(260, 725, 75, "Exit");
  
}

void Game(){
  background(45, 53, 65);
  
  generateApple();
  snake.show();
  snake.move();
  snakeEatApple();
  followTail();
  
  //Score
  textButton(width / 2 - 50, 30, 24, "SCORE: " + totalTails);
  
  crashSnake();
}

void Ranking(){
  background(45, 53, 65);
  
  //Button Back
  image(back, 10, 10, 50, 50);
}
