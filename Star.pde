class Star{
  private int x,y;
  public Star(){
    x = (int)(Math.random()*500);
    y = (int)(Math.random()*500);
  }
  public void show(){ 
    stroke(252,255,173);
    ellipse(x,y,2,2);
    fill(252,255,173);
  }
}
