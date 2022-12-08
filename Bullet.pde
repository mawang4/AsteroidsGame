class Bullet extends Floater{
  public Bullet(Spaceship rocket){
    myCenterX = rocket.getCenterX(); 
    myCenterY = rocket.getCenterY(); 
    myXspeed = rocket.getXspeed();
    myYspeed = rocket.getYspeed();
    myPointDirection = rocket.getPointDirection();
    accelerate(6); 
  }
  public void show(){
    stroke(139,246,255);
    ellipse((float)myCenterX,(float)myCenterY,8,8); 
    fill(139,246,255); 
  }
  public double getCenterX(){
    return myCenterX;
  }
  public double getCenterY(){
    return myCenterY;
  }
}  
