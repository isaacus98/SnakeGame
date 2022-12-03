class Apple{
  PImage apple;
  float x, y;
  
  public Apple(){
    apple = loadImage("apple.png");
  }
  
  void generateCoordinates(){
    x = random(width);
    y = random(height);
    
    //Calcualate Coordinates
    float rx = x % 20.0;
    float ry = y % 20.0;
    
    x -= rx;
    y -= ry;
  }
  
  void show(){
    image(apple, x, y, 20, 20);
  }
  
}
