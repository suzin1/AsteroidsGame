class Asteroids extends Floater
{
  private double rotSpeed;
  public Asteroids(){
      corners = 6;
      int[] xS = {-8, 16, -8, -2, 0 ,10};
      int[] yS = {-8, 0, 8, 0, 6, 0};
      xCorners = xS;
      yCorners = yS;
      rotSpeed = Math.random()*.1;
      myColor = color(120,120,126);
      myCenterX = 0;
      myCenterY = 0;
      myPointDirection = 0;
      myDirectionX = (Math.random()*10);
      myDirectionY = (Math.random()*10);
  }
  public void move ()   //move the floater in the current direction of travel
  {      
    turn((int)rotSpeed);
    super.move();
  }   
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





//class Asteroids //note that this class does NOT extend Floater
//{
//  //your code here
//   private double myX,myY,myAngle, mySpeed;
//   public Asteroids(){
//    myX = Math.random()*700;
//    myY = Math.random()*700;
//    mySpeed = 2;
//    myAngle = Math.random()*Math.PI*2;
//  }
//  public void move(){
//    myX = myX + Math.sin(myAngle)*mySpeed;
//    myY = myY + Math.cos(myAngle)*mySpeed;
    
//    //wrap around screen    
//    if(myX >width)
//    {     
//      myX = 0;    
//    }    
//    else if (myX<0)
//    {     
//      myX = width;    
//    }    
//    if(myY >height)
//    {    
//      myY = 0;    
//    } 
    
//    else if (myY < 0)
//    {     
//      myY = height;    
//    }   
//  }   

//  public void show(){
//    fill(188,27,27);
//    stroke(0);
//    quad((float)myX+50,(float)myY+25,(float)myX+80,(float)myY+30,(float)myX+60,(float)myY+48,(float)myX+40,(float)myY+50);

//  }
//}
