//your variable declarations here
Star [] star;
ArrayList <Asteroids> stars = new ArrayList<Asteroids>();
Spaceship bob = new Spaceship();
ArrayList <Bullet> shoot = new ArrayList<Bullet>();
public void setup() 
{
  //your code here
  size(700,700);
  star = new Star[250];
  for (int i = 0; i < star.length; i++){
    star[i] = new Star();
  }
  for (int i = 0; i < 25; i++){
    stars.add(new Asteroids());
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
  for (int i=0;i<stars.size();i++){
  stars.get(i).show();
  stars.get(i).move();
  float distance = dist((bob.getX()),(bob.getY()),(stars.get(i).getX()),(stars.get(i).getY()));
    if (distance<10)
        stars.remove(i);
  }
  for (int i = 0; i< shoot.size(); i++){
    shoot.get(i).show();
    shoot.get(i).move();
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
  if (key == 'x'){
    shoot.add(new Bullet(bob));
  }
}
