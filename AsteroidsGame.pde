//your variable declarations here
Star [] star;
Asteroids [] stars;
Spaceship bob = new Spaceship();
public void setup() 
{
  //your code here
  size(700,700);
  star = new Star[100];
  for (int i = 0; i < star.length; i++){
    star[i] = new Star();
  }
  stars = new Asteroids[25];
  for (int i = 0; i < stars.length; i++){
    stars[i] = new Asteroids();
  }
}
public void draw() 
{
  //your code here
  background(0);
  bob.show();
  bob.move();
  for (int i=0;i<star.length;i++){
  star[i].show();
  }
  for (int i=0;i<stars.length;i++){
  stars[i].show();
  stars[i].move();
  }
}
public void keyPressed(){
  if (key=='a'){
    bob.accelerate(.5);
  }
  if (key=='w'){
    bob.turn(15);
  }
  if (key=='d'){
    bob.accelerate(-.5);
  }
  if (key=='s'){
    bob.setDirectionX(0);
    bob.setDirectionY(0);
    bob.setX((int)(Math.random()*650));
    bob.setY((int)(Math.random()*650));
    bob.setPointDirection((int)(Math.random()*180));
  }
}
