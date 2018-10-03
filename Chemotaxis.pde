Bacteria[] aiya;

void setup()
{
  size(500,500);
  aiya = new Bacteria[1000];
  for(int i = 0; i < aiya.length; i++)
  {
    aiya[i] = new Bacteria();
  }
}

void draw ()
{
  background(0);
  for(int i = 0; i < aiya.length; i++)
    {
    aiya[i].walk();
    aiya[i].show();
    }
}

class Bacteria
{
  int myColor;
  int myX, myY;
  Bacteria()
  {
    myColor = color(((int)(Math.random()*155)+100), ((int)(Math.random()*155)+100), ((int)(Math.random()*155)+100));
    myY = 250;
    myX = 250;
  }
  
  void walk()
  {
    myX = myX + (int)(Math.random()*3)-1;
    myY = myY + (int)(Math.random()*3)-1;
  }
  
  void show()
  {
    noStroke();
    fill(myColor);
    ellipse(myX, myY, 25, 25);
  }
}
