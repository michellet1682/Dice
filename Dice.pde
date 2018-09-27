void setup()
{
  size(300, 300);
  noLoop();
}
void draw()
{
  for(int y = 25; y <= 300; y+=100){
    for(int x = 25; x <= 300; x+=100){
      Die dice = new Die (x, y);
      dice.show();
    }
  }
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY,num;
  
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    num = (int)(Math.random()*6)+1;
  }
  void roll()
  {
    if((int)(Math.random()*6)+1 == 1){
      num = 1;
    } else if ((int)(Math.random()*6)+1 == 2){
      num = 2;
    } else if ((int)(Math.random()*6)+1 == 3){
      num = 3;
    } else if ((int)(Math.random()*6)+1 == 4){
      num = 4;
    } else if ((int)(Math.random()*6)+1 == 5){
      num = 5;
    } else {
      num = 6;
    }
  }
  void show()
  {
    fill(255,255,255);
    rect(myX, myY, 50, 50, 7);
    fill(0);
    if(num == 1){
      ellipse(myX + 25, myY + 25, 10, 10);
    } else if (num == 2){
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 35, myY + 35, 10, 10);
    } else if (num == 3){
      ellipse(myX + 25, myY + 25, 10, 10);
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 35, myY + 35, 10, 10);
    } else if (num == 4){
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 35, myY + 35, 10, 10);
      ellipse(myX + 35, myY + 15, 10, 10);
      ellipse(myX + 15, myY + 35, 10, 10);
    } else if (num == 5){
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 35, myY + 35, 10, 10);
      ellipse(myX + 35, myY + 15, 10, 10);
      ellipse(myX + 15, myY + 35, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
    } else {
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 35, myY + 35, 10, 10);
      ellipse(myX + 35, myY + 15, 10, 10);
      ellipse(myX + 15, myY + 35, 10, 10);
      ellipse(myX + 25, myY + 15, 10, 10);
      ellipse(myX + 25, myY + 35, 10, 10);
    }
  }
}
