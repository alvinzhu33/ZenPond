public class Koi extends FishObject{
  boolean reverse = true;
  
  public Koi(float x, float y, float l){
    super(x,y,l);
    wid = wid*1.2;
  } 
  
  void bones1(float x, float y, int r, int g, int b){
    noStroke();
    
    //Upper body
    fill(r, g, b, 240);
    quad((wag+x)+wid/2, 0+y, (wag+x)-wid/2, 0+y,
    (wag*1.01+x)-(wid), len+y, (wag*1.01+x)+(wid), len+y);
    arc((wag*1.3)+x+wid/1.2, 4*len+y, len, len, -HALF_PI, HALF_PI);
    arc((wag*1.3)+x-wid/1.2, 4*len+y, len, len, HALF_PI, 3*HALF_PI);
    quad((wag*1.01+x)+wid, len+y, (wag*1.01+x)-wid, len+y, 
    (wag*1.10)+x-wid, 2*len+y, (wag*1.10)+x+wid, 2*len+y);
    quad((wag*1.10)+x+wid, 2*len+y, (wag*1.10)+x-wid, 2*len+y,
    (wag*1.2)+x-wid/1.1, 3*len+y, (wag*1.2)+x+wid/1.1, 3*len+y);
    
    //Eyes
    fill(245,255,235,240);
    ellipse(((wag*1.01)+x)+wid, len+y, 22*len/20, 22*len/20);
    ellipse(((wag*1.01)+x)-wid, len+y, 22*len/20, 22*len/20);
    fill(r-60, g+50, b+50, 240);
    ellipse(((wag*1.01)+x)+wid, len+y-2, 12*len/20, 12*len/20);
    ellipse(((wag*1.01)+x)-wid, len+y-2, 12*len/20, 12*len/20);
    fill(r, g, b, 240);
  }
  
  void bones2(float x, float y){
    //Lower body
    quad((wag*1.2)+x+wid/1.1, 3*len+y,(wag*1.2)+x-wid/1.1, 3*len+y,
    (wag*1.3)+x-wid/1.2, 4*len+y, (wag*1.3)+x+wid/1.2, 4*len+y);
    quad((wag*1.3)+x+wid/1.2, 4*len+y, (wag*1.3)+x-wid/1.2, 4*len+y,
    (wag*1.4)+x-wid/1.4, 5*len+y, (wag*1.4)+x+wid/1.4, 5*len+y);
    quad((wag*1.4)+x+wid/1.4, 5*len+y, (wag*1.4)+x-wid/1.4, 5*len+y,
    (wag*1.5)+x+6-wid/1.6, 6*len+y, (wag*1.5)+x-6+wid/1.6, 6*len+y);
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

  void grow(){
    if(len<=13 && millis()%10000>9000 && millis()%10000<10000){
        len=len*1.003;
        wid=wid*1.003;
    }
  }
  
  float maxSize(){
    return 18;
  }
}