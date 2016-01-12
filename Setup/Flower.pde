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
    //Larger flower
    int degrees=0;
    int start=(int)(Math.random()*6)*10;
    fill((232+(int)(Math.random()*50)),(144+(int)(Math.random()*50)),(203+(int)(Math.random()*50)));
    while(degrees<360){
      pushMatrix();
      translate(xvalue,yvalue);
      rotate(radians(start + degrees));
      noStroke();
      beginShape();
      vertex(0,0);
      bezier(0,0,size/2,size/2,size/5,size,0,size);
      bezier(0,0,-size/2,size/2,-size/5,size,0,size);
      endShape();
      popMatrix();
      degrees+=60;
    }
    
    //Smaller flower
    degrees=30;
    size=size*3/4;
    fill((245+(int)(Math.random()*70)),(15+(int)(Math.random()*70)),(76+(int)(Math.random()*70)),180);
    while(degrees<390){
      pushMatrix();
      translate(xvalue,yvalue);
      rotate(radians(start + degrees));
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