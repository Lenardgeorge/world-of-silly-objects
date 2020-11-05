class Game
{
  PImage spidey_img;
  int spidey_pos_X ;
  int spidey_pos_Y ;
  
  PImage bait_img;
  int bait_pos_X ;
  int bait_pos_Y ;
  
  Game(int _level)
  {   
     spidey_img = loadImage("laDefense.jpg");  
     
    
     if(level == 1)
     {
       spidey_pos_X = 30;
       spidey_pos_Y = 40;
     }
     else if (level == 2)
     {
       spidey_pos_X = 30;
       spidey_pos_Y = 40;
     }
     else if (level == 3)
     {
       spidey_pos_X = 30;
       spidey_pos_Y = 40;
     }
  }
  
  
  void moveUp(){}
  void moveLeft(){}
  void moveDown(){}
  void moveRight(){}
  
}
