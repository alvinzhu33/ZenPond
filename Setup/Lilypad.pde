import java.util.*;

public class Lilypad{
  float xpos;
  float ypos;
  float size;
  float angle;
  
  boolean left = false; 
  int leftcount = 0;
  
  //Lilypad colors
  int r;
  int g;
  int b;
  
  public Lilypad(int x, int y, int s, float ang){
    xpos = x;
    ypos = y;
    size = s;
    angle = ang;
    r = (25+(int)(Math.random()*60));
    g = (87+(int)(Math.random()*60));
    b = (35+(int)(Math.random()*60));
  }
  
  void drift(){
  if (left==true){
   xpos-= 0.05; 
   leftcount++;
   if(leftcount >= 50){
     left = false;
     leftcount = 0; 
   }
  }
  if(left==false){
    xpos+= 0.05;
    leftcount++; 
    if(leftcount >= 50){
     left = true;
     leftcount = 0; 
   }
  }
 }
  
  public void drawLilypad(){
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