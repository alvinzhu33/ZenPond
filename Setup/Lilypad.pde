import java.util.*;

public class Lilypad{
  float xpos;
  float ypos;
  float size;
  
  boolean left = false; 
  int leftcount = 0;
  
  //Lilypad colors
  int r;
  int g;
  int b;
  
  public Lilypad(int x, int y, int s){
    xpos = x;
    ypos = y;
    size = s;
    r = (25+(int)(Math.random()*60));
    g = (87+(int)(Math.random()*60));
    b = (35+(int)(Math.random()*60));
  }
  
  void drift(){
  if (left==true){
   xpos-= 0.07; 
   leftcount++;
   if(leftcount >= 50){
     left = false;
     leftcount = 0; 
   }
  }
  if(left==false){
    xpos+= 0.07;
    leftcount++; 
    if(leftcount >= 50){
     left = true;
     leftcount = 0; 
   }
  }
 }
  
  public void drawLilypad(int angle){
    drift();
    noStroke();
    pushMatrix();
    translate(xpos,ypos);
    rotate(angle);
    fill(r, g, b);
    beginShape();
    arc(0,0,size,size, -PI*14/15,PI*19/20);
    endShape();
    popMatrix();
   }  
}