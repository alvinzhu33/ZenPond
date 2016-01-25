public class Koi extends FishObject{
  boolean reverse = true;
  
  public Koi(float x, float y, float l){
    super(x,y,l);
    wid = wid*1.4;
  } 
  void move(){
      if((float)Math.random()*10<1){
        orientation += ((float)Math.random()*11/100.0)-5/100.0;
      }
      fishx+=sin(orientation);
      fishy-=cos(orientation);
      
      pushMatrix();
      translate(fishx,fishy);
      rotate(orientation);
      
      //Wagging motion
      if(reverse){
        wag--;
        if(wag<=-(len*9.0/5.0)){
          reverse=false;
          wag=-(len*9/5)+1;
        }
      }
      else{
        wag++;
        if(wag>=(len*9.0/5.0)){
          reverse=true;
          wag=(len*9/5)-1;
        }
      }
      boundary();
      
      //Draw fish
      bones1(0,0, 232, 79, 28);
      bones2(0,0);
      bones3(0,0);
      popMatrix();
      
      if(tailchange<20 && reverse==false){
        tailchange++;
      }
      if(tailchange >= 20){
        reverse = true;
        tailchange--;
      }
      if(tailchange<20 && reverse==true){
          tailchange--;
      }
      if(tailchange<-10 && reverse==true){
        reverse=false;
        tailchange++;
      }
      
      grow();
    }
    
    void boundary(){
      if(fishy<-len*10){
        fishy=680;
      }
      if(fishy>675+len*10){
        fishy=-10;
      }
      if(fishx<-len*10){
        fishx=910;
      }
      if(fishx>900+len*10){
        fishx=-10;
      }
    }

}