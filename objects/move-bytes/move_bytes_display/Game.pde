class Game
{
  PImage spidey_img;
  int spidey_pos_X ;
  int spidey_pos_Y ;
  
  PImage bait_img;
  int bait_pos_X ;
  int bait_pos_Y ;
  
  Game()
  {   
     spidey_img = loadImage("le_human.jpg");      
     
     //Default Human Positon
     spidey_pos_X = 120;
     spidey_pos_Y = 120;
     imageMode(CENTER);
     image(spidey_img, spidey_pos_X, spidey_pos_Y, 50, 50); 
     
  }
    
  void drawLevel(int _level)
  {
     if(_level == 1)          //LEVEL 1
     {
       spidey_pos_X = 30;
       spidey_pos_Y = 40;
     }
     else if (_level == 2)    //LEVEL 2
     {
       spidey_pos_X = 30;
       spidey_pos_Y = 40;
     }
     else if (_level == 3)    //LEVEL 3
     {
       spidey_pos_X = 30;
       spidey_pos_Y = 40;
     }
     
     image(spidey_img, spidey_pos_X, spidey_pos_Y, 50, 50);
   }
  
  void invalidMove(int direction){
       
  }
  
  void drawMove(){
     

    
      line(spidey_pos_X, spidey_pos_Y, spidey_pos_X, spidey_pos_Y+240);
      
      line(spidey_pos_X, spidey_pos_Y, spidey_pos_X, spidey_pos_Y+240);

  }
  
}
