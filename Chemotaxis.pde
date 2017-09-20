Bacteria[] bob;

void setup()
{
  size(500, 500);
  bob = new Bacteria[5];
    for (int i =0; i < bob.length; i++)
  {
    bob[i] = new Bacteria (100, 100, (int)(Math.random())+100);
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
    myX = myX + (int)(Math.random()*3)-1;
    myY = myY + (int)(Math.random()*3)-1;
  }

  void show()
  {
    fill(myCol,myCol,myCol);
    ellipse(myX, myY, 10, 10);
  }
}
