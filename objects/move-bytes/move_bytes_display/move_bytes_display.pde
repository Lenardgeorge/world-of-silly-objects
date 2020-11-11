int level = 0;
int position_Spidey[] ; 

int[] moveArray = new int[3];

Game game ;
Moveblock blockA ;
Moveblock blockB ;
Moveblock blockC ;

void setup()
{
  size(720, 720);
  background(255, 204, 0);
  drawMatrix();  
  
  // Setting up the game environment 
  game = new Game();
  
  // Setting up the blocks
  blockA = new Moveblock(1);
  blockB = new Moveblock(2);
  blockC = new Moveblock(3);
}

void draw()
{
  //game.drawLevel(1);
  game.drawMove();
  
  if(blockA.isMoved() || blockB.isMoved()|| blockC.isMoved())
  {
     
  }
  
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
   
   
   //LEVEL 1
   ellipse(36, 23, 40,40);
   
   
}
