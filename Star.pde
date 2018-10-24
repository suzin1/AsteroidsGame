class Star //note that this class does NOT extend Floater
{
  //your code here
   double myX,myY,myAngle, mySpeed;
  Star(){
    myX = myY = 0;
    mySpeed = 3;
    myAngle = Math.random()*Math.PI*2;
  }
  void move(){
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.cos(myAngle)*mySpeed;
  }
  void show(){
    fill(0);
    stroke(0);
    ellipse((float)myX,(float)myY,5,5);
  }
}
