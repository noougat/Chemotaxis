Bacteria[] bob;
int num = (int)(Math.random())+100;
void setup()
{
  size(500, 500);
  bob = new Bacteria[10];
  for (int i =0; i < bob.length; i++)
  {
    bob[i] = new Bacteria ((int)(Math.random()*501), (int)(Math.random()*501), (int)(Math.random()*101)+100 );
  }
}

void draw()
{
  background(0);
  for (int i =0; i < bob.length; i++)
  {
    bob[i].walk();
    bob[i].show();
  }
}


class Bacteria
{
  int myX, myY, myCol;
  Bacteria (int x, int y, int col)
  {
    myX = x;
    myY = y;
    myCol = col;
  }

  void walk()
  {
    if (mousePressed == true)
    {
      if (myX > mouseX)
        myX =myX + (int)(Math.random())-1;
      else if (myX < mouseX)
        myX = myX + (int)(Math.random()*2);

      if (myY > mouseY)
        myY =myY + (int)(Math.random())-1;
      else if (myY < mouseY)
        myY = myY + (int)(Math.random()*2);
    }
    myX = myX + (int)(Math.random()*3)-1;
    myY = myY + (int)(Math.random()*3)-1;
  }

  void show()
  {
    noStroke();
    fill(myCol, myCol + 40, myCol + 155);
    arc(myX, myY, 40, 40, PI*6/5, 2*PI);
    arc(myX + 25, myY +10, 50, 50, PI*1/4, PI*33/24);
    fill(0);
    ellipse(myX + 5, myY - 10, 5, 5);
    fill(247, 112, 112);
    arc(mouseX, mouseY, 40, 40, PI*6/5, 2*PI);
    arc(mouseX + 25, mouseY +10, 50, 50, PI*1/4, PI*33/24);
    fill(0);
    ellipse(mouseX + 5, mouseY - 10, 5, 5);
  }
}

void mouseReleased()

{
  for (int i =0; i < bob.length; i++)
  {
    bob[i].myX =  bob[i].myX + (int)(Math.random()*7)-3;
    bob[i].myY =  bob[i].myY + (int)(Math.random()*7)-3;
  }
}
