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
 
 
 
 Walker[] bob;

void setup()
{
  size(300,300);
  bob = new Walker[1000];
  for(int i = 0; i < bob.length; i++)
  {
    bob[i] = new Walker ();
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

class Walker
{
  int myX, myY;
  Walker()
  {
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
