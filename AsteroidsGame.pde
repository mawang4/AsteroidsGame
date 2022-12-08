Star [] stars = new Star[150];
Spaceship rocket = new Spaceship();
ArrayList <Asteroid> comets = new ArrayList <Asteroid>(); 
ArrayList <Bullet> pew = new ArrayList <Bullet>();  

public void setup() 
{
  background(0,0,0);
  size(500,500);
  for(int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
  for(int j = 0; j < 20; j++){
    comets.add(new Asteroid()); 
  }
}

public void draw() {
  background(0,0,0);
  for(int i = 0; i < stars.length; i++){
    stars[i].show();
  }
  for(int b = 0; b < pew.size(); b++){
    pew.get(b).show(); 
    pew.get(b).move();
    if(pew.get(b).getCenterX() > width - 10)
      pew.remove(b);
    else if(pew.get(b).getCenterX() < 10)
      pew.remove(b);
    else if(pew.get(b).getCenterY() > height - 10)
      pew.remove(b);
    else if(pew.get(b).getCenterY() < 10)
      pew.remove(b);
  }
  rocket.show();
  rocket.move();
  for(int j = 0; j < comets.size(); j++){ //spaceship hitting asteroid 
    comets.get(j).move();
    comets.get(j).show();
    double distance1 = dist((float)rocket.getCenterX(), (float)rocket.getCenterY(), (float)comets.get(j).getCenterX(), (float)comets.get(j).getCenterY());
    if(distance1 <= 15)
      comets.remove(j); 
   }
   for(int b = 0; b < pew.size(); b++){ //bullet hitting asteroid
     for(int j = 0; j < comets.size(); j++){
       double distance2 = dist((float)pew.get(b).getCenterX(), (float)pew.get(b).getCenterY(), (float)comets.get(j).getCenterX(), (float)comets.get(j).getCenterY()); 
       if(distance2 <= 15){
         pew.remove(b); 
         comets.remove(j); 
         break; 
       }
     }
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
     if(key == ' '){
       pew.add(new Bullet(rocket)); 
     }
  }
 }
