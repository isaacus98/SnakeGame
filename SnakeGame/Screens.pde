void Menu(){
  background(45, 53, 65);
  
  //Logo
  image(logo, 50, 100, 550, 150);
  
  //Botons menu
  button(50, 400, 550, 100, 30);
  textButton(240, 475, 75, "PLAY");
  button(50, 525, 550, 100, 30);
  textButton(195, 600, 75, "SCORES");
  button(50, 650, 550, 100, 30);
  textButton(250, 725, 75, "EXIT");
  
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
  
  if(isGame){
    //Title
    textButton(140, 150, 100, "SCORES");
  
    //User score
    textButton(100, 250, 80, "Your score: " + totalTails);
  
    //Separator
    stroke(245, 245, 245);
    strokeWeight(5);
    strokeCap(ROUND);
    line(50, 285, 600, 285);
    
    //Title score
    textButton(150, 360, 70, "Best scores");
  
    //Scores
    textButton(150, 450, 60, "1 - Player 1: " + scores[0]);
    textButton(150, 525, 60, "2 - Player 2: " + scores[1]);
    textButton(150, 600, 60, "3 - Player 3: " + scores[2]);
    textButton(150, 675, 60, "4 - Player 4: " + scores[3]);
    textButton(150, 750, 60, "5 - Player 5: " + scores[4]);
  } else{
    //Title score
    textButton(150, 250, 70, "Best scores");
  
    //Scores
    textButton(150, 325, 60, "1 - Player 1: " + scores[0]);
    textButton(150, 400, 60, "2 - Player 2: " + scores[1]);
    textButton(150, 475, 60, "3 - Player 3: " + scores[2]);
    textButton(150, 550, 60, "4 - Player 4: " + scores[3]);
    textButton(150, 625, 60, "5 - Player 5: " + scores[4]);
  }
  
}
