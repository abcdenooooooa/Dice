int sum;
void setup()
{
  size(400,400);
  noLoop();
}
void draw()
{
  sum = 0;
  background(100);
  for (int x = 25; x <= 375; x += 25){
    for (int y = 25; y <= 375; y += 25){
      Die bob = new Die(x,y);
      bob.roll();
      bob.show();
    }
  }
  textAlign(CENTER);
  fill(255);
  text("Total = " + sum,200,398);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int dots, myX, myY;
  
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
  }
  void roll()
  {
    dots = 1 + (int)(Math.random()*6);
    System.out.println(dots);
  }
  void show()
  {
    noStroke();
    fill(255);
    rectMode(CENTER);
    ellipseMode(CENTER);
    rect(myX,myY,20,25);
    rect(myX,myY,25,20);
    ellipse(myX-10,myY-10,4,4);
    ellipse(myX+10,myY-10,4,4);
    ellipse(myX+10,myY+10,4,4);
    ellipse(myX-10,myY+10,4,4);
    fill(0);
    sum += dots;
    
    if (dots == 1) {ellipse(myX,myY,4,4);}
    
    if (dots == 2){
      if (Math.random()>0.5){
        ellipse(myX-6,myY-6,4,4);
        ellipse(myX+6,myY+6,4,4);
      }
      else{
        ellipse(myX-6,myY+6,4,4);
        ellipse(myX+6,myY-6,4,4);
      }
    }
    
    if (dots == 3){
      if (Math.random()>0.5){
        ellipse(myX-6,myY-6,4,4);
        ellipse(myX,myY,4,4);
        ellipse(myX+6,myY+6,4,4);
      }
      else{
        ellipse(myX-6,myY+6,4,4);
        ellipse(myX,myY,4,4);
        ellipse(myX+6,myY-6,4,4);
      }
    }
    
    if (dots == 4){
      ellipse(myX-6,myY-6,4,4);
      ellipse(myX+6,myY-6,4,4);
      ellipse(myX+6,myY+6,4,4);
      ellipse(myX-6,myY+6,4,4);
    }
    
    if (dots == 5){
      ellipse(myX-6,myY-6,4,4);
      ellipse(myX+6,myY-6,4,4);
      ellipse(myX+6,myY+6,4,4);
      ellipse(myX-6,myY+6,4,4);
      ellipse(myX,myY,4,4);
    }
    
    if (dots == 6){
      if (Math.random()>0.5){
        ellipse(myX-6,myY-6,4,4);
        ellipse(myX+6,myY-6,4,4);
        ellipse(myX+6,myY,4,4);
        ellipse(myX+6,myY+6,4,4);
        ellipse(myX-6,myY+6,4,4);
        ellipse(myX-6,myY,4,4);
      }
      else{
        ellipse(myX-6,myY-6,4,4);
        ellipse(myX,myY-6,4,4);
        ellipse(myX+6,myY-6,4,4);
        ellipse(myX+6,myY+6,4,4);
        ellipse(myX,myY+6,4,4);
        ellipse(myX-6,myY+6,4,4);
      }
    }
  }
}
