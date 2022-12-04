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
  
  //Score
  textButton(width / 2 - 50, 30, 24, "SCORE: " + totalTails);
  
  //Controls
  textButton(100, 820, 24, "CONTROLS:");
  textButton(231, 780, 24, "LEFT");
  textButton(311, 780, 24, "UP");
  textButton(360, 780, 24, "DOWN");
  textButton(433, 780, 24, "RIGHT");
  
  //Images controls
  image(controls[0], 230, 787, 50, 50);
  image(controls[1], 300, 787, 50, 50);
  image(controls[2], 370, 787, 50, 50);
  image(controls[3], 440, 787, 50, 50);
  
  //Board
  fill(45, 53, 65);
  stroke(245, 245, 245);
  strokeWeight(4);
  rect(0, 40, 649, 700);
  
  //Events snake
  generateApple();
  snake.show();
  snake.move();
  snakeEatApple();
  followTail();
  crashSnake();
}

void Ranking(){
  background(45, 53, 65);
  
  //Button Back
  image(back, 10, 10, 50, 50);
}
