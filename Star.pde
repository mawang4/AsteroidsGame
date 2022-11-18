class Star{
  private int x,y;
  Star(){
    x = (int)(Math.random() * 500);
    y = (int)(Math.random() * 500);
  }
  public void show(){
    fill(255,255,225);
    ellipse(x,y,3,3);
  }
}
