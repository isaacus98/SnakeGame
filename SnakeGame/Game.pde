//Game logic

void generateApple(){
  background(45, 53, 65);
  apple.show();
}

void snakeEatApple(){
  if(apple.x == snake.x && apple.y == snake.y){
    if(totalTails == 0){
      tails.add(new Tail(snake.previousX, snake.previousY));
      totalTails++;
      apple.generateCoordinates();
    } else if(totalTails != 0){
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
