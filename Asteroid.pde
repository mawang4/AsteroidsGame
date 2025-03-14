class Asteroid extends Floater{
  private int rotationSpeed; 
  public Asteroid(){
    corners = 6; 
    xCorners = new int[corners];
    yCorners = new int[corners]; 
    xCorners[0] = -11; 
    yCorners[0] = -8; 
    xCorners[1] = 7;
    yCorners[1] = -8;
    xCorners[2] = 13;
    yCorners[2] = 0;
    xCorners[3] = 6; 
    yCorners[3] = 10; 
    xCorners[4] = -10; 
    yCorners[4] = 8; 
    xCorners[5] = -13;
    yCorners[5] = 0; 
    
    myColor = color(147,140,131); 
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500); 
    myXspeed = (int)(Math.random()*3) + 1; 
    myYspeed = (int)(Math.random()*2) + 1; 
    myPointDirection = (int)(Math.random()*180); 
    rotationSpeed = (int)(Math.random()*5) + 1; 
  }
  public void move(){
    turn(rotationSpeed);
    super.move(); //calls move() function so you don't have to copy everything
  }
  public double getCenterX(){
    return myCenterX; 
  }
  public double getCenterY(){
    return myCenterY; 
  }
}  
