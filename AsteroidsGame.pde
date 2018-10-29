//your variable declarations here
Star [] stars;
Spaceship bob = new Spaceship();
public void setup() 
{
  //your code here
  size(700,700);
  stars = new Star[20];
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
public void keyPressed(){
  if (key=='4'){
    bob.accelerate(.05);
  }
  if (key=='5'){
    bob.turn(5);
  }
  //if (key=='a'){
  //  bob.turn(5);
  //}
}
