Bacteria [] seven;
 void setup() 
 {     
   background(0,0,0);
   size(500,500);
   frameRate(1000000);
   seven = new Bacteria [4];
   for(int i=0; i< seven.length; i++)
   {
   seven[i] = new Bacteria(color(255,255,255));
   }
  
 }
 
 
 void draw()   
 {    
   for(int i =0; i< seven.length; i++)
   {
   seven[i].show();
   seven[i].walk();
   }
 }  
 class Bacteria    
 {     
   int myX,myY, myColor;
   Bacteria(int r)
   {
    myX = (int)(Math.random()*475);
    myY = (int)(Math.random()*475);
    myColor = r;
    
 }
 void walk()
 {
   myX = myX + (int)(Math.random()*3)-1;
   myY = myY + (int)(Math.random()*3)-1;
   
 }
 
   void show()
   {
     fill(myColor);
     
     ellipse(myX,myY,3,3);
 }
 }   
