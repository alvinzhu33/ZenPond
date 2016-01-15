import java.util.*;

public class Skeleton{
  float xpos;
  float ypos;
  float len;
  
   public Skeleton(float x, float y, float l){
     xpos = x;
     ypos = y;
     len = l;//Include tail later
   }
  
  void bones(){
    noFill();
    stroke(255);
    bezier(xpos, ypos, xpos, ypos+len, xpos, ypos+2*len, xpos, ypos+3*len);
    //bezier(xpos, ypos+2*len, xpos, ypos+3*len, xpos, ypos+4*len);
    //bezier(xpos, ypos+3*len, xpos, ypos+len, xpos, ypos+2*len);
    //bezier(xpos, ypos+3*len, xpos, ypos+len, xpos, ypos+2*len);
  }
}