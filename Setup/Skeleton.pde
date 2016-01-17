import java.util.*;

public class Skeleton{
  float xpos;
  float ypos;
  float len;
  
   public Skeleton(float x, float y, float l){
     xpos = x;
     ypos = y;
     len = l/9;//Include tail later
     bones1(0,0);
     bones2(0,0);
     bones3(0,0);
   }
  
  void bones1(float x, float y){
    noFill();
    stroke(255);
    //The space between two beziers is one quad
    bezier(xpos+x, ypos+y, xpos+x*1.01, ypos+len+y, xpos+x*1.10, ypos+2*len+y, xpos+x*1.2, ypos+3*len+y);
  }
  
  void bones2(float x, float y){
    bezier(xpos+x*1.2, ypos+3*len+y, xpos+x*1.3, ypos+4*len+y, xpos+x*1.4, ypos+5*len+y, xpos+x*1.5, ypos+6*len+y);
  }
  
  void bones3(float x, float y){
    bezier(xpos+x*1.5, ypos+6*len+y, xpos+x*1.65, ypos+7*len+y, xpos+x*1.8, ypos+8*len+y, xpos+x*2, ypos+9*len+y);
  }
  
  void move(float x, float y){
    /*if((millis()/1000)%20>10){
      x = -x;
    }*/
    //turn(0); //PI/2 = goes down, 3*PI/2 = goes up, PI = left, 0 = right unit circle
    bones1(x,y);
    bones2(x,y);
    bones3(x,y);
  }
  
  void turn(float angle){
   xpos = xpos+cos(angle);
   ypos = ypos+sin(angle); 
  }
  
  void step1(float x, float y){
    bezier(xpos+x*1.2+10, ypos+y, xpos+x*1.10+7, ypos+len+y, xpos+x*1.01+3, ypos+2*len+y, xpos+x, ypos+3*len+y);
  }
  
  void step2(float x, float y){
    bezier(xpos+x+20, ypos+3*len+y, xpos+x*1.01+17, ypos+2*len+y, xpos+x*1.10+13, ypos+len+y, xpos+x*1.2+10, ypos+y);
    bezier(xpos+x*1.2+10, ypos+y, xpos+x*1.10+7, ypos+len+y, xpos+x*1.01+3, ypos+2*len+y, xpos+x, ypos+3*len+y);
  }
  
  void step3(float x, float y){
    bezier(xpos+x+20, ypos+6*len+y, xpos+x+20, ypos+5*len+y, xpos+x+20, ypos+4*len+y, xpos+x+20, ypos+3*len+y);
    bezier(xpos+x+20, ypos+3*len+y, xpos+x*1.01+17, ypos+2*len+y, xpos+x*1.10+13, ypos+len+y, xpos+x*1.2+10, ypos+y);
    bezier(xpos+x*1.2+10, ypos+y, xpos+x*1.10+7, ypos+len+y, xpos+x*1.01+3, ypos+2*len+y, xpos+x, ypos+3*len+y);
  }
  
  void step4(float x, float y){
    bezier(xpos+x+20, ypos+9*len+y, xpos+x+20, ypos+8*len+y, xpos+x+20, ypos+7*len+y, xpos+x+20, ypos+6*len+y);
    bezier(xpos+x+20, ypos+6*len+y, xpos+x+20, ypos+5*len+y, xpos+x+20, ypos+4*len+y, xpos+x+20, ypos+3*len+y);
    bezier(xpos+x+20, ypos+3*len+y, xpos+x*1.01+17, ypos+2*len+y, xpos+x*1.10+13, ypos+len+y, xpos+x*1.2+10, ypos+y);
  }
  
  void step5(float x, float y){
    bezier(xpos+x+20, ypos+12*len+y, xpos+x+20, ypos+11*len+y, xpos+x+20, ypos+10*len+y, xpos+x+20, ypos+9*len+y);
    bezier(xpos+x+20, ypos+9*len+y, xpos+x+20, ypos+8*len+y, xpos+x+20, ypos+7*len+y, xpos+x+20, ypos+6*len+y);
    bezier(xpos+x+20, ypos+6*len+y, xpos+x+20, ypos+5*len+y, xpos+x+20, ypos+4*len+y, xpos+x+20, ypos+3*len+y);
  }
}