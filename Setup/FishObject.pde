import java.util.*;

public class FishObject{   
  float xpos;
  float ypos;
  float scale; //0.5 is default
  float x = 70; //variable used to help constuct sizes
  int degrees=1;
  
  public FishObject(float size, float x, float y){
    scale = size;
    xpos = x;
    ypos = y;
  }
  
  void draw() {
    noStroke();
    drawFish();
  }
  
  public void drawFish(){
    fill(255,128,0);
    fish1();
    fish2();
    fish3();
    fish4();
    fish5();
    fish6();
    fish7();
    fish8();
    fish9();
    eyes();
    tail();
  }
  
  void fish1(){
    //Upper Head
    //pushMatrix();
    //translate(xpos,ypos);
    //rotate(radians(degrees));
    quad(xpos, ypos, xpos+(12*scale), ypos-(15*scale), xpos+(48*scale), ypos-(15*scale), xpos+(60*scale), ypos);
    //popMatrix();
  }
  
  void fish2(){
    //Lower head
    //pushMatrix();
    xpos -= (5*scale);
    ypos += (15*scale);
    //translate(xpos,ypos);
    //rotate(radians(degrees+3));
    quad(xpos, ypos, xpos+(5*scale), ypos-(15*scale), xpos+(65*scale), ypos-(15*scale), xpos+(70*scale), ypos);
    //popMatrix();
  }
  
  void fish3(){
    //Upper middle
    //pushMatrix();
    xpos -= (3*scale);
    ypos += (15*scale);
    //translate(xpos,ypos);
    //rotate(radians(degrees+6));
    x += 6;
    quad(xpos, ypos, xpos+(3*scale), ypos-(15*scale), xpos+((-3+x)*scale), ypos-(15*scale), xpos+(x*scale), ypos);
    //popMatrix();
  }
  
  void fish4(){
    //Middle
    //pushMatrix();
    ypos += (15*scale);
    //translate(xpos,ypos);
    //rotate(radians(degrees+9));
    quad(xpos, ypos, xpos, ypos-(15*scale), xpos+(x*scale), ypos-(15*scale), xpos+(x*scale), ypos);
    //popMatrix();
  }
  
  void fish5(){
    //Lower middle
    //pushMatrix();
    ypos += (15*scale); 
    xpos += (3*scale);
    x -= 6;
    //translate(xpos,ypos);
    //rotate(radians(degrees+12));
    quad(xpos, ypos, xpos-(3*scale), ypos-(15*scale), xpos+((3+x)*scale), ypos-(15*scale), xpos+(x*scale), ypos);
    //popMatrix();
  }
  
  void fish6(){
    //Upper bottom
    ypos += (15*scale); 
    xpos += (3*scale);
    x -= 6;
    quad(xpos, ypos, xpos-(3*scale), ypos-(15*scale), xpos+((3+x)*scale), ypos-(15*scale), xpos+(x*scale), ypos);
  }
  
  void fish7(){
    //lower bottom
    ypos += (15*scale); 
    xpos += (5*scale);
    x -= 5;
    quad(xpos, ypos, xpos-(5*scale), ypos-(15*scale), xpos+(x*scale), ypos-(15*scale), xpos+((x-5)*scale), ypos); 
  }
  
  void fish8(){
    //Bottom
    ypos += (15*scale); 
    xpos += (6*scale);
    x -= 11;
    quad(xpos, ypos, xpos-(6*scale), ypos-(15*scale), xpos+(x*scale), ypos-(15*scale), xpos+((x-6)*scale), ypos);
  }
  
  void fish9(){
    //Last
    x -= 6;
    triangle(xpos, ypos, xpos+((0.5*x)*scale), ypos+(30*scale), xpos+(x*scale), ypos);
  }
  
  void tail(){
    fill(255,128,0);
    xpos += ((0.57*x)*scale);
    ypos += (20*scale);
    
    beginShape();
      vertex(xpos, ypos);
      bezierVertex(xpos-(2*scale*3), ypos+(5*scale*3), xpos+(3*scale*3), ypos+(6*scale*3), xpos+(7*scale*3), ypos+(11*scale*3));
      bezierVertex(xpos+(10*scale*3), ypos+(15*scale*3), xpos+(14*scale*3), ypos+(21*scale*3), xpos+(7*scale*3), ypos+(29*scale*3));
      bezierVertex(xpos+(9*scale*3), ypos+(26*scale*3), xpos+(7*scale*3), ypos+(22*scale*3), xpos+(3*scale*3), ypos+(19*scale*3));
      bezierVertex(xpos-(1*scale*3), ypos+(15*scale*3), xpos-(5*scale*3), ypos+(8*scale*3), xpos-(2*scale*3), ypos+(3*scale*3));  
    endShape();
  }
  
  void eyes(){
    pushMatrix();
    fill(245,255,235);
    ellipse(xpos-(10*scale), ypos-(100*scale), 22*scale, 22*scale);
    ellipse(xpos+(50*scale), ypos-(100*scale), 22*scale, 22*scale);
    fill(0,200,100);
    ellipse(xpos-(10*scale), ypos-(103*scale), 12*scale, 12*scale);
    ellipse(xpos+(50*scale), ypos-(103*scale), 12*scale, 12*scale);
  }
}