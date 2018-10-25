class Star //note that this class does NOT extend Floater
{
  //your code here
   double myX,myY,myAngle, mySpeed;
  Star(){
    myX = Math.random()*700;
    myY = Math.random()*700;
    mySpeed = 2;
    myAngle = Math.random()*Math.PI*2;
  }
  void move(){
    myX = myX + Math.sin(myAngle)*mySpeed;
    myY = myY + Math.cos(myAngle)*mySpeed;
  }
  void show(){
    fill(225);
    stroke(225);
    ellipse((float)myX,(float)myY,15,25);
  }
}
