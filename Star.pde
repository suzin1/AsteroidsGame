class Star //note that this class does NOT extend Floater
{
  //your code here
   private double myX,myY,myAngle, mySpeed;
   public Star(){
    myX = Math.random()*700;
    myY = Math.random()*700;
    mySpeed = 2;
    myAngle = Math.random()*Math.PI*2;
  }
  public void move(){
    myX = myX + Math.sin(myAngle)*mySpeed;
    myY = myY + Math.cos(myAngle)*mySpeed;
    
    //wrap around screen    
    if(myX >width)
    {     
      myX = 0;    
    }    
    else if (myX<0)
    {     
      myX = width;    
    }    
    if(myY >height)
    {    
      myY = 0;    
    } 
    
    else if (myY < 0)
    {     
      myY = height;    
    }   
  }   
  
  public void show(){
    fill(225);
    stroke(225);
    ellipse((float)myX,(float)myY,15,25);
  }
}
