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
  background(255,229,219);
  for(int i = 0; i < aiya.length; i++)
    {
    aiya[i].walk();
    aiya[i].show();
    }
}

void mousePressed()
{
  for(int i = 0; i < aiya.length; i++)
  {
    aiya[i] = new Bacteria();
  }
}

class Bacteria
{
  int myColor;
  int x, y;
  Bacteria()
  {
    myColor = color(((int)(Math.random()*155)+100), ((int)(Math.random()*155)+100), ((int)(Math.random()*155)+100));
    x = 30;
    y = 30;
  }
  
  void walk()
  {
    if(mouseX > x)
      x = x + (int)(Math.random()*3)-1;
      else
      x = x + (int)(Math.random()*3)+1;
    if(mouseY > y)
      y = y + (int)(Math.random()*3)-1;
      else
      y = y + (int)(Math.random()*3)+1;
      
      if(x == 300)
      x = 30;
      if(y == 300)
      y = 30;
  }
  
  void show()
  {
    noStroke();
    fill(myColor);
    ellipse(x, y, 25, 25);
  }
}
