import java.util.*;

public class FishObject{
  float fishx;
  float fishy;
  float len;
  float wid;
  float scale = 1;
  
  float tailchange = 1;
  
  float wag = 0.0;
  boolean reverse = false;
  float orientation;
  
   public FishObject(float x, float y, float l){
     len = l/9.0;//Include tail later
     wid = l/5.0;
     fishx=x;
     fishy= y;
     orientation=(int)(Math.random()*360);
 
   }
  
  void bones1(float x, float y, int r, int g, int b){
    noStroke();
    
    //Upper body
    fill(r, g, b, 240);
    quad((wag+x)+wid/2, 0+y, (wag+x)-wid/2, 0+y,
    (wag*1.01+x)-(wid), len+y, (wag*1.01+x)+(wid), len+y);
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
  
  void bones3(float x, float y){
    //Tail
    beginShape();
      vertex((wag*1.5)+x, 6*len+y);
      
      bezierVertex(((wag*1.5)+x), (6*len+y), 
                    ((wag*1.8)+x+wid/1.6)+tailchange, (8*len+y), 
                    ((wag*1.5)+x+wid/1.6), (10*len+y));
                    
      bezierVertex(((wag*1.5)+x+wid/1.6), (10*len+y), 
                    ((wag*1.8)+x+wid/1.6)-tailchange, (12*len+y), 
                    ((wag*1.5)+x-wid/1.6)+tailchange, (14*len+y));
                    
      bezierVertex(((wag*1.5)+x-wid/1.6)+tailchange, (14*len+y), 
                    ((wag*1.8)+x-wid/1.6)-tailchange, (12*len+y), 
                    ((wag*1.5)+x-wid/1.6), (10*len+y));
                    
      bezierVertex(((wag*1.5)+x-wid/1.6), (10*len+y), 
                    ((wag*1.8)+x-wid/1.6)+tailchange, (8*len+y), 
                    ((wag*1.5)+x), (6*len+y));
    endShape();
  }
  
  void move(){
    //Random orientation
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
    bones1(0,0,0,0,0);
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
    if(len<=15 && millis()%10000>9000 && millis()%10000<10000){
        len=len*1.005;
        wid=wid*1.005;
    }
  }
  
  float maxSize(){
    return 12;
  }
}