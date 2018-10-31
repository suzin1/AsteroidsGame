class Star //note that this class does NOT extend Floater
{
  //your code here
   private double myX,myY;
   public Star(){
    myX = Math.random()*700;
    myY = Math.random()*700;

  }
 public void show(){
    fill(225,225,225,150);
    ellipse((float)myX,(float)myY,5,5);
  }
}
