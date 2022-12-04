class Apple{
  PImage apple;
  float x, y;
  
  public Apple(){
    apple = loadImage("apple.png");
    generateCoordinates();
  }
  
  void generateCoordinates(){
    x = random(20, width - 10);
    y = random(40, 740);
    
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
