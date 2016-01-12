import java.util.*;

public class Flower{
  int xvalue;
  int yvalue;
  int size;
  
  public Flower(int x, int y, int s){
    xvalue = x;
    yvalue = y;
    size = s;
  }
  
  public void drawFlower(){
    int degrees=0;
    int start=(int)(Math.random()*6)*10;
    while(degrees<360){
      pushMatrix();
      translate(xvalue,yvalue);
      rotate(radians(start + degrees));
      fill((232+(int)(Math.random()*30)),(144+(int)(Math.random()*30)),(203+(int)(Math.random()*30)));
      noStroke();
      beginShape();
      vertex(0,0);
      bezier(0,0,size/2,size/2,size/5,size,0,size);
      bezier(0,0,-size/2,size/2,-size/5,size,0,size);
      endShape();
      popMatrix();
      degrees+=60;
    }
  }
}