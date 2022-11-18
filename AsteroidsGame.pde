Spaceship rocket = new Spaceship();
Star [] stars = new Star[150];

public void setup() 
{
  background(0,0,0);
  size(500,500);
  for(int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
}

public void draw() {
  background(0,0,0);
  rocket.show();
  rocket.move();
  for(int i = 0; i < stars.length; i++){
    stars[i].show();
  }
}

public void keyPressed() {
   if(keyPressed){
     if(key == 'w'){
       rocket.accelerate(0.5);
     }
     if(key == 's'){
       rocket.accelerate(-0.5);
     }
     if(key == 'a'){
       rocket.turn(-10);
     }
     if(key == 'd'){
       rocket.turn(10);
     }
     if(key == 'h') {
       rocket.hyperspace();
     }
  }
 }
