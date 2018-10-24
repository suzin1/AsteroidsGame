//your variable declarations here
Star [] stars;
public void setup() 
{
  //your code here
  size(700,700);
  stars = new Star[100];
  for (int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
}
public void draw() 
{
  //your code here
  //background(0);
  Spaceship bob = new Spaceship();
  bob.show();
  //keyPressed();
  for (int i=0;i<stars.length;i++){
  stars[i].show();
  stars[i].move();
  }
}
//public void keyPressed(){
  
//}
