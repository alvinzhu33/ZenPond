import java.util.*;

public class Skeleton{
  float xpos;
  float ypos;
  float len;
  float wid = 20;
  float scale = 0.5;
  
  float wag = 0;
  boolean reverse = false;
  
   public Skeleton(float x, float y, float l){
     xpos = x;
     ypos = y;
     len = l/9;//Include tail later
     bones1(0,0);
     bones2(0,0);
     bones3(0,0);
   }
  
  void bones1(float x, float y){
    //Fill();
    noStroke();
    fill(204, 102, 0);
    //The space between two beziers is one quad
    quad(((xpos+wag)+x)+wid/2, ypos+y, ((xpos+wag)+x)-wid/2, 
    ypos+y,((xpos+wag*1.01)+x)-(wid), ypos+len+y, ((xpos+wag*1.01)+x)+(wid), ypos+len+y);
    
    quad(((xpos+wag*1.01)+x)+wid, ypos+len+y, ((xpos+wag*1.01)+x)-wid, ypos+len+y, 
    (xpos+wag*1.10)+x-wid, ypos+2*len+y, (xpos+wag*1.10)+x+wid, ypos+2*len+y);
    
    quad((xpos+wag*1.10)+x+wid, ypos+2*len+y, (xpos+wag*1.10)+x-wid, ypos+2*len+y,
    (xpos+wag*1.2)+x-wid/1.1, ypos+3*len+y, (xpos+wag*1.2)+x+wid/1.1, ypos+3*len+y);
    //bezier((xpos+wag*1.10)+x, ypos+2*len+y, (xpos+wag*1.2)+x, ypos+3*len+y);
  }
  
  void bones2(float x, float y){
    
    quad((xpos+wag*1.2)+x+wid/1.1, ypos+3*len+y,(xpos+wag*1.2)+x-wid/1.1, ypos+3*len+y, 
    (xpos+wag*1.3)+x-wid/1.2, ypos+4*len+y, (xpos+wag*1.3)+x+wid/1.2, ypos+4*len+y);
   
    quad((xpos+wag*1.3)+x+wid/1.2, ypos+4*len+y, (xpos+wag*1.3)+x-wid/1.2, ypos+4*len+y, 
    (xpos+wag*1.4)+x-wid/1.4, ypos+5*len+y, (xpos+wag*1.4)+x+wid/1.4, ypos+5*len+y);
    
    quad((xpos+wag*1.4)+x+wid/1.4, ypos+5*len+y, (xpos+wag*1.4)+x-wid/1.4, ypos+5*len+y, 
    (xpos+wag*1.5)+x-wid/1.6, ypos+6*len+y, (xpos+wag*1.5)+x+wid/1.6, ypos+6*len+y);
    //bezier(, (xpos+wag*1.4)+x, ypos+5*len+y, (xpos+wag*1.5)+x, ypos+6*len+y);
  }
  
  void bones3(float x, float y){
    quad((xpos+wag*1.5)+x+wid/1.6, ypos+6*len+y, (xpos+wag*1.5)+x-wid/1.6, ypos+6*len+y, 
    (xpos+wag*1.65)+x-wid/1.8, ypos+7*len+y, (xpos+wag*1.65)+x+wid/1.8, ypos+7*len+y);
    
    quad((xpos+wag*1.65)+x+wid/1.8, ypos+7*len+y, (xpos+wag*1.65)+x-wid/1.8, ypos+7*len+y, 
    (xpos+wag*1.8)+x-wid/2.1, ypos+8*len+y, (xpos+wag*1.8)+x+wid/2.1, ypos+8*len+y);
    
    triangle((xpos+wag*1.8)+x+wid/2, ypos+8*len+y, (xpos+wag*1.8)+x-wid/2, ypos+8*len+y, (xpos+wag*2)+x, ypos+9*len+y);
    //bezier(, , (xpos+wag*2)+x, ypos+9*len+y);
   
    
    //can't see the tail yet though because xpos and ypos has to be added the appropriate amount
    beginShape();
      vertex((xpos+wag*2)+x, ypos+9*len+y);
      bezierVertex((xpos+wag*2)+x+(5*scale*3), ypos+9*len+y-(2*scale*3), (xpos+wag*2)+x+(6*scale*3), ypos+9*len+y+(3*scale*3), (xpos+wag*2)+x+(11*scale*3), ypos+9*len+y+(7*scale*3));
      bezierVertex((xpos+wag*2)+x+(15*scale*3), ypos+9*len+y+(10*scale*3), (xpos+wag*2)+x+(21*scale*3), ypos+9*len+y+(14*scale*3), (xpos+wag*2)+x+(29*scale*3), ypos+9*len+y+(7*scale*3));
      bezierVertex((xpos+wag*2)+x+(26*scale*3), ypos+9*len+y+(9*scale*3), (xpos+wag*2)+x+(22*scale*3), ypos+9*len+y+(7*scale*3), (xpos+wag*2)+x+(19*scale*3), ypos+9*len+y+(3*scale*3));
      bezierVertex((xpos+wag*2)+x+(15*scale*3), ypos+9*len+y-(1*scale*3), (xpos+wag*2)+x+(8*scale*3), ypos+9*len+y-(5*scale*3), (xpos+wag*2)+x+(3*scale*3), ypos+9*len+y-(2*scale*3));  
    endShape();
    
    //void eyes(){
    fill(245,255,235);
    ellipse(((xpos+wag*1.01)+x)+wid, ypos+len+y, 22*scale, 22*scale);
    ellipse(((xpos+wag*1.01)+x)-wid, ypos+len+y, 22*scale, 22*scale);
    fill(0,200,100);
    ellipse(((xpos+wag*1.01)+x)+wid, ypos+len+y-2, 12*scale, 12*scale);
    ellipse(((xpos+wag*1.01)+x)-wid, ypos+len+y-2, 12*scale, 12*scale);
  
  }
  
  void move(float x, float y){
    //turn(0); //PI/2 = goes down, 3*PI/2 = goes up, PI = left, 0 = right unit circle
    
    //Wagging motion
    if(reverse){
      wag--;
      if(wag==-len*9/5){
        reverse=false;
      }
    }
    else{
      wag++;
      if(wag==len*9/5){
        reverse=true;
      }
    }
    bones1(x,y);
    bones2(x,y);
    bones3(x,y);
    
  }
  void boundary(float y){
    if (up()){
      if(fishy <= -len*9*1.9){
        fishy = 650;
      }
    }else{
      if (fishy >= 700){
        fishy = -1509;
      }
    }
  }
  
  boolean up(){
    if (upordown == "up"){
      return true;
    }else{
      return false;
    }
  }
  
  void turn(float angle){
   xpos = xpos+cos(angle);
   ypos = ypos+sin(angle); 
  }
  
  /*void step1(float x, float y){
    bezier(xpos+x*1.2+20, ypos+y, xpos+x*1.10+14, ypos+len+y, xpos+x*1.01+6, ypos+2*len+y, xpos+x+2, ypos+3*len+y);
    bezier(xpos+x, ypos+3*len+y, xpos+x, ypos+4*len+y, xpos+x, ypos+5*len+y, xpos+x, ypos+6*len+y);
    bezier(xpos+x, ypos+6*len+y, xpos+x*1.01, ypos+7*len+y, xpos+x*1.10, ypos+8*len+y, xpos+x*1.2, ypos+9*len+y);
  }
  
  void step2(float x, float y){
    bezier(xpos+x+40, ypos+3*len+y, xpos+x*1.01+34, ypos+2*len+y, xpos+x*1.10+26, ypos+len+y, xpos+x*1.2+20, ypos+y);
    bezier(xpos+x*1.2+20, ypos+y, xpos+x*1.10+14, ypos+len+y, xpos+x*1.01+6, ypos+2*len+y, xpos+x+2, ypos+3*len+y);
    bezier(xpos+x, ypos+3*len+y, xpos+x, ypos+4*len+y, xpos+x, ypos+5*len+y, xpos+x, ypos+6*len+y);
  }
  
  void step3(float x, float y){
    bezier(xpos+x+40, ypos+6*len+y, xpos+x+40, ypos+5*len+y, xpos+x+40, ypos+4*len+y, xpos+x+40, ypos+3*len+y);
    bezier(xpos+x+40, ypos+3*len+y, xpos+x*1.01+34, ypos+2*len+y, xpos+x*1.10+26, ypos+len+y, xpos+x*1.2+20, ypos+y);
    bezier(xpos+x*1.2+20, ypos+y, xpos+x*1.10+14, ypos+len+y, xpos+x*1.01+6, ypos+2*len+y, xpos+x+2, ypos+3*len+y);
  }
  
  void step4(float x, float y){
    bezier(xpos+x+40, ypos+9*len+y, xpos+x+40, ypos+8*len+y, xpos+x+40, ypos+7*len+y, xpos+x+40, ypos+6*len+y);
    bezier(xpos+x+40, ypos+6*len+y, xpos+x+40, ypos+5*len+y, xpos+x+40, ypos+4*len+y, xpos+x+40, ypos+3*len+y);
    bezier(xpos+x+40, ypos+3*len+y, xpos+x*1.01+34, ypos+2*len+y, xpos+x*1.10+26, ypos+len+y, xpos+x*1.2+20, ypos+y);
  }
  
  void step5(float x, float y){
    bezier(xpos+x+40, ypos+12*len+y, xpos+x+40, ypos+11*len+y, xpos+x+40, ypos+10*len+y, xpos+x+40, ypos+9*len+y);
    bezier(xpos+x+40, ypos+9*len+y, xpos+x+40, ypos+8*len+y, xpos+x+40, ypos+7*len+y, xpos+x+40, ypos+6*len+y);
    bezier(xpos+x+40, ypos+6*len+y, xpos+x+40, ypos+5*len+y, xpos+x+40, ypos+4*len+y, xpos+x+40, ypos+3*len+y);
  }
  
  void uturn(float x, float y){
    noFill();
    stroke(255);
    if((millis()/1000)%10<2){
      step1(x, y);
    }
    if((millis()/1000)%10<4 && (millis()/1000)%10>=2){
      step2(x, y);
    }
    if((millis()/1000)%10<6 && (millis()/1000)%10>=4){
      step3(x, y);
    }
    if((millis()/1000)%10<8 && (millis()/1000)%10>=6){
      step4(x, y);
    }
    if((millis()/1000)%10<10 && (millis()/1000)%10>=8){
      step5(x, y);
    }
  }*/
}