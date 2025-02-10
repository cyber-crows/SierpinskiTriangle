public void setup()
{
size(500,500);
background(0);
}
public void draw()
{
sierpinski(100,500,(int)(Math.random()*400)+50);
}
public void mouseClicked()//optional
{
  redraw();
}
public void sierpinski(int x, int y, int len) 
{
 if (len<=20){
   fill(255,0,0);
triangle(x,y,x+len/2,y-len/2,x+len,y);
 }
  else{
    
  sierpinski(x,y,len/2);
  fill(0,0,255);
  sierpinski(x+len/2,y,len/2);
  sierpinski(x+len/2,y-len/2,len/2);
  
  }
}
