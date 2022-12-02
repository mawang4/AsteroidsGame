Star [] stars = new Star[150];
Spaceship rocket = new Spaceship();
ArrayList <Asteroid> comets = new ArrayList <Asteroid>(); 

public void setup() 
{
  background(0,0,0);
  size(500,500);
  for(int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
  for(int j = 0; j < 10; j++){
    comets.add(new Asteroid()); 
  }
}

public void draw() {
  background(0,0,0);
  for(int i = 0; i < stars.length; i++){
    stars[i].show();
  }
  rocket.show();
  rocket.move();
  for(int j = 0; j < comets.size(); j++){
    comets.get(j).move();
    comets.get(j).show();
    double distance = dist((float)rocket.getCenterX(), (float)rocket.getCenterY(), (float)comets.get(j).getCenterX(), (float)comets.get(j).getCenterY());
    if(distance <= 20)
      comets.remove(j); 
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
