class Snake{
  float x, y;
  float xSpeed, ySpeed;
  float previousX, previousY;
  
  public Snake(){
    x = 100;
    y = 100;
    xSpeed = 10;
  }
  
  void move(){
    if(keyCode == UP) {
      println("Amunt");
      ySpeed = -10;
      xSpeed = 0;
    }
    else if(keyCode == DOWN) {
      println("Avall");
      ySpeed = 10;
      xSpeed = 0;
    }
    else if(keyCode ==LEFT) {
      println("esquerra");
      xSpeed = -10;
      ySpeed = 0;
    }
    else if(keyCode == RIGHT) {
      println("dreta");
      xSpeed = 10;
      ySpeed = 0;
    }
  }
  
  void show(){
    previousX = x + 10;
    previousY = y + 10;
    x += xSpeed;
    y += ySpeed;
    fill(106, 179,64);
    stroke(255, 255, 255);
    rect(x, y, 20, 20);
  }
  
  void restartSnake(){
    x = 100;
    y = 100;
    ySpeed = 0;
    xSpeed = 10;
  }
  
}
