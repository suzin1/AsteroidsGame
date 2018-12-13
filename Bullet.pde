class Bullet extends Floater
{
  public Bullet(Spaceship theShip)
  {
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myPointDirection = theShip.getPointDirection();
    double dRadians = myPointDirection*(Math.PI/180);
    myDirectionX = 5 * Math.cos(dRadians) + theShip.getDirectionX();
    myDirectionY = 5 * Math.sin(dRadians) + theShip.getDirectionY();
    myColor = color(0);
  }
  public void show()
  {
    fill(8,198,174);
    ellipse((float)myCenterX, (float)myCenterY, (float)10, (float)10);
    super.show();
  }
    public void move ()  
  {      
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;        
    if(myCenterX >width){shoot.remove(this); }    
    else if (myCenterX<0){shoot.remove(this); }    
    if(myCenterY >height){shoot.remove(this); } 
    else if (myCenterY < 0){shoot.remove(this);}   
  }
//class Bullet extends Floater
//{
//  public Bullet(){
//      myColor = 196;   
//      myCenterX = myCenterY = 350;   
//      myDirectionX = 0;
//      myDirectionY = 0;
//      myPointDirection = 0;
//    }
//    public void accelerate(Spaceship a){
//      double dRadians =myPointDirection*(Math.PI/180);  
//      myDirectionX = 5 * Math.cos(dRadians) + a.getdirectionX();
//      myDirectionY = 5 * Math.sin(dRadians) + a.getdirectionY(); 
//    }
    
    public void setX(int x){myCenterX = x;}  
  public int getX(){return (int)myCenterX;}   
  public void setY(int y){myCenterY = y;}   
  public int getY(){return (int)myCenterY;}   
  public void setDirectionX(double x){myDirectionX = x;}   
  public double getDirectionX(){return myDirectionX;}   
  public void setDirectionY(double y){myDirectionY = y;}   
  public double getDirectionY(){return myDirectionY;}   
  public void setPointDirection(int degrees){myPointDirection = degrees;}   
  public double getPointDirection(){return (int)myPointDirection;} 
}
