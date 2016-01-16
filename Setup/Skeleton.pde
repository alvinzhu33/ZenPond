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
    bones1(x,y);
    bones2(x,y);
    bones3(x,y);
  }
}