class Moveblock{
   
  int blockID ;
  int direction ;
  
  int moveLEFT ;
  int moveRIGHT ;
  int moveTOP ;
  int moveBOTTOM ;

  
  boolean isLEFT = false ;
  boolean isRIGHT = false ;
  boolean isTOP = false ;
  boolean isBOTTOM = false ;
  
  Moveblock(int number)
  {
     
  }
  
  void connectBlock(){
    
  }
  
  boolean isMoved(){
    
    if ( moveUp()>0 || moveLeft()>0 || moveRight()>0 || moveUp()>0 )
    {
     return true;    
    }
    else 
     return false ;
    
  }
  
  int moveUp(){
    //accelerometer read X
    return 0;
  }
  
  int moveLeft(){
    
    return 0;
  }
  
  int moveDown(){
    
    return 0;
  }
  
  int moveRight(){
  
    return 0;
  } 

  void setDirection(){
      
    
  }
 
}
