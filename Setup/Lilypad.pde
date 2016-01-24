import java.util.*;

public class Lilypad{
  float xpos;
  float ypos;
  float size;
  
  boolean up = false; 
  int upcount = 0;
  
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
  if (up==true){
   ypos-= 0.1; 
   upcount++;
   if(upcount >= 50){
     up = false;
     upcount = 0; 
   }
  }
  if(up==false){
    ypos+= 0.1;
    upcount++; 
    if(upcount >= 50){
     up = true;
     upcount = 0; 
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