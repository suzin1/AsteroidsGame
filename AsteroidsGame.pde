//your variable declarations here
Star [] stars;
Spaceship bob = new Spaceship();
public void setup() 
{
  //your code here
  size(700,700);
  stars = new Star[50];
  for (int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
}
public void draw() 
{
  //your code here
  background(0);
  bob.show();
  bob.move();
  keyPressed();
  for (int i=0;i<stars.length;i++){
  stars[i].show();
  stars[i].move();
  }
}
public void keyPressed(int a){
  if (a==4){
    bob.accelerate(2.5);
  }
  if (a==5){
    bob.turn((int)Math.random()*5);
  }
}
