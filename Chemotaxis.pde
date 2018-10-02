 //declare bacteria variables here   
 void setup()   
 {     
 	//initialize bacteria variables here   
 }   
 void draw()   
 {    
 	//move and show the bacteria   
 }  
 class Bacteria    
 {     
 	//lots of java!   
 }    
 
 
 
Bacteria[] bob;

void setup()
{
  size(300,300);
  bob = new Bacteria[1000];
  for(int i = 0; i < bob.length; i++)
  {
    bob[i] = new Bacteria ();
  }
}

void draw ()
{
  background(0);
  for(int i = 0; i < bob.length; i++)
    {
    bob[i].walk();
    bob[i].show();
    }
}

class Bacteria
{
  int myColor;
  int myX, myY;
  Bacteria()
  {
    myColor = color(((int)(Math.random()*155)+100), ((int)(Math.random()*155)+100), ((int)(Math.random()*155)+100));
    myY = 750;
    myX = 250;
  }
  
  void walk()
  {
    myX = myY + (int)(Math.random()*3)-1;
    myY = myX + (int)(Math.random()*3)-1;
  }
  
  void show()
  {
    fill(255);
    ellipse(myX, myY, 100, 100);
  }
}
