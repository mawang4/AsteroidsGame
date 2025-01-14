class Spaceship extends Floater{
  public Spaceship(){
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -10;
    yCorners[0] = -10;
    xCorners[1] = 18;
    yCorners[1] = 0;
    xCorners[2] = -10;
    yCorners[2] = 10;
    xCorners[3] = -4;
    yCorners[3] = 0; 

    myColor = color(255,0,0);
    myCenterX = 250;
    myCenterY = 250;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }
  public void hyperspace() {
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = (int)(Math.random()*360);
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
  }
  public double getCenterX(){
    return myCenterX;
  }
  public double getCenterY(){
    return myCenterY;
  }
  public double getXspeed(){
    return myXspeed;  
  }
  public double getYspeed(){
    return myYspeed; 
  }
  public double getPointDirection(){
    return myPointDirection;
  }
}  
