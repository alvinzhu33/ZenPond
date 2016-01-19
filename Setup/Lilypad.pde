import java.util.*;

public class Lilypad{
  int xpos;
  int ypos;
  int size;
  
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
  
  public void drawLilypad(int angle){
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