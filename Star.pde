class Star{
  private int x,y;
  Star(){
    x = (int)(Math.random()*500);
    y = (int)(Math.random()*500);
  }
  public void show(){ 
    stroke(252,255,173);
    ellipse(x,y,3,3);
    fill(252,255,173);
  }
}
