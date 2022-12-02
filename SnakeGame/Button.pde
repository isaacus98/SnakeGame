void button(int x, int y, int w, int h, int r){
  fill(97, 115, 141);
  stroke(71, 84, 103);
  strokeWeight(4);
  rect(x, y, w, h, r);
}

void textButton(int x, int y, int size, String str){
  fill(245, 245, 245);
  textSize(size);
  text(str,x,y);
}
