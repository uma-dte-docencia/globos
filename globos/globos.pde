class Globo
{
  float x, y,vx,vy;
  Globo (float _x, float _y)
  {
   x=_x;
   y=_y; 
   vx=random(-5,5);
   vy=random(-5, 5);
  }

  void update()
  {
    y=y+vy + random(-1,1); 
    x=x+vx+ random(-1,1); 
  }

  void dibujate()
  {
    
    for(int k = 0; k<1; k++){
      ellipse(x,y,5,5);}
  }
  
}

ArrayList<Globo> globos;


void setup()
{
  size(1024,800);
  globos = new ArrayList<Globo>();  
}

void draw()
{
 // int a = 0;
//  background(a);
  for(int i=0;i<globos.size();i++)
  {
    globos.get(i).update();
    globos.get(i).dibujate();

  }
}

void mousePressed()
{
  for(int l= 0; l< 5000; l++){
  globos.add(new Globo(mouseX,mouseY));}
}
