//Game logic

void generateApple(){
  //background(45, 53, 65);
  apple.show();
}

void snakeEatApple(){
  if(apple.x == snake.x && apple.y == snake.y){
    if(totalTails == 0){
      tails.add(new Tail(snake.previousX, snake.previousY));
      totalTails++;
      apple.generateCoordinates();
    } else if(totalTails != 0){ //<>// //<>//
      tails.add(new Tail(tails.get(totalTails-1).previousX, tails.get(totalTails-1).previousY));
      totalTails++;
      apple.generateCoordinates();
    }
  }
}

void followTail(){
  for(int i = 0;i < tails.size(); i++){
    if(i == 0){
      tails.get(i).show(snake.previousX, snake.previousY);
    } else{
      tails.get(i).show(tails.get(i-1).previousX, tails.get(i-1).previousY);
    }
  }
}

void crashSnake(){
  if(snake.x <= 0 || snake.x + 20 > width ) {
    pantalla = 2;
    writeScore();
  }
  else if(snake.y < 40 || snake.y + 20 > 740) {
    pantalla = 2;
    writeScore();
  }
  
  for(int i = 0; i< tails.size(); i++) {
    if(snake.x == tails.get(i).x && snake.y == tails.get(i).y){
      pantalla = 2;
      writeScore(); //<>//
    }
  }
}

void restart(){
  totalTails = 0;
  tails.clear();
  snake.restartSnake();
}

void writeScore(){
  Boolean scoreIsUpdate = false;
  String lastScore = "";
  String lastScore2 = "";
  
  for(int i = 0; i < scores.length; i++){
    if(!scoreIsUpdate){
      if(totalTails > Integer.parseInt(scores[i])){
        lastScore = scores[i];
        scores[i] = Integer.toString(totalTails);
        scoreIsUpdate = true;
      }
    } else{
      lastScore2 = scores[i];
      scores[i] = lastScore;
      lastScore = lastScore2;
    }
  }
  
  saveStrings("score.txt", scores);
}
