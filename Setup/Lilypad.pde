import java.util.*;

public class Lilypad{
  int xpos;
  int ypos;
  int size;
  
  public Lilypad(int x, int y, int s){
    xpos = x;
    ypos = y;
    size = s;
  }
  
  public void drawLilypad(int angle){
    noStroke();
    pushMatrix();
    translate(xpos,ypos);
    rotate(angle);
    //rotate(radians((int)(Math.random()*36)*10));
    fill(25,87,35);
    //fill((25+(int)(Math.random()*60)),(87+(int)(Math.random()*60)),(35+(int)(Math.random()*60)));
    beginShape();
    arc(0,0,size,size, -PI*14/15,PI*19/20);
    endShape();
    popMatrix();
   }  
}