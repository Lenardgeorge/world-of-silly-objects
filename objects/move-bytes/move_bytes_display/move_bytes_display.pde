int level = 0;
int position_Spidey[] ; 



void setup()
{
  size(720, 720);
  background(255, 204, 0);
  drawMatrix();  
}

void draw()
{
  setupGameWorld();
}

void drawMatrix()
{
   line(240, 0, 240, 720);
   line(0,240, 720, 240);
   line(480, 0, 480, 720);
   line(0, 480, 720, 480);
}

void setupGameWorld()
{
   //DEMO  
  
   //LEvEL 1
   ellipse(36, 23, 40,40);
   
}

void moveSpidey()
{
   
}
