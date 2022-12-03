class Tail{
  float x, y;
  float previousX, previousY;
  
  public Tail(float x, float y){
    this.x = x;
    this.y = y;
  }
  
  void show(float x, float y){
    previousX = x;
    previousY = y;
    this.x = x;
    this.y = y;
    fill(106, 179,64);
    stroke(255, 0, 0);
    strokeWeight(2);
    rect(this.x, this.y, 20, 20);
  }
  
}
