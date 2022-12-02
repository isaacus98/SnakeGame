class Apple{
  PImage apple;
  float x, y;
  
  public Apple(){
    apple = loadImage("apple.png");
  }
  
  void generateCoordinates(){
    x = random(width) - 20;
    y = random(height) - 20;
    
    //Calcualate Coordinates
    float rx = x % 10.0;
    float ry = y % 10.0;
    
    x -= rx;
    y -= ry;
  }
  
  void show(){
    image(apple, x, y, 20, 20);
  }
  
}
