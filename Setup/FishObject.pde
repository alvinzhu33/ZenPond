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
    calcMove();
    move();
  }
  
  public void drawFish(){
    fill(255,128,0);
    fish1(0);
    fish2(0);
    fish3(0);
    fish4(0);
    fish5(0);
    fish6(0);
    fish7(0);
    fish8(0);
    fish9(0);
    eyes();
    tail();
  }
  
  void fish1(int trans){
    //Upper Head
    //pushMatrix();
    //translate(xpos,ypos);
    //rotate(radians(degrees));
    quad(xpos+trans, ypos, xpos+(12*scale)+trans, ypos-(15*scale), xpos+(48*scale)+trans, ypos-(15*scale), xpos+(60*scale)+trans, ypos);
    //popMatrix();
  }
  
  void fish2(int trans){
    //Lower head
    //pushMatrix();
    xpos -= (5*scale);
    ypos += (15*scale);
    //translate(xpos,ypos);
    //rotate(radians(degrees+3));
    quad(xpos+trans, ypos, xpos+(5*scale)+trans, ypos-(15*scale), xpos+(65*scale)+trans, ypos-(15*scale), xpos+(70*scale)+trans, ypos);
    //popMatrix();
  }
  
  void fish3(int trans){
    //Upper middle
    //pushMatrix();
    xpos -= (3*scale);
    ypos += (15*scale);
    //translate(xpos,ypos);
    //rotate(radians(degrees+6));
    x += 6;
    quad(xpos+trans, ypos, xpos+(3*scale)+trans, ypos-(15*scale), xpos+((-3+x)*scale)+trans, ypos-(15*scale), xpos+(x*scale)+trans, ypos);
    //popMatrix();
  }
  
  void fish4(int trans){
    //Middle
    //pushMatrix();
    ypos += (15*scale);
    //translate(xpos,ypos);
    //rotate(radians(degrees+9));
    quad(xpos+trans, ypos, xpos+trans, ypos-(15*scale), xpos+(x*scale)+trans, ypos-(15*scale), xpos+(x*scale)+trans, ypos);
    //popMatrix();
  }
  
  void fish5(int trans){
    //Lower middle
    //pushMatrix();
    ypos += (15*scale); 
    xpos += (3*scale);
    x -= 6;
    //translate(xpos,ypos);
    //rotate(radians(degrees+12));
    quad(xpos+trans, ypos, xpos-(3*scale)+trans, ypos-(15*scale), xpos+((3+x)*scale)+trans, ypos-(15*scale), xpos+(x*scale)+trans, ypos);
    //popMatrix();
  }
  
  void fish6(int trans){
    //Upper bottom
    ypos += (15*scale); 
    xpos += (3*scale);
    x -= 6;
    quad(xpos+trans, ypos, xpos-(3*scale)+trans, ypos-(15*scale), xpos+((3+x)*scale)+trans, ypos-(15*scale), xpos+(x*scale)+trans, ypos);
  }
  
  void fish7(int trans){
    //lower bottom
    ypos += (15*scale); 
    xpos += (5*scale);
    x -= 5;
    quad(xpos+trans, ypos, xpos-(5*scale)+trans, ypos-(15*scale), xpos+(x*scale)+trans, ypos-(15*scale), xpos+((x-5)*scale)+trans, ypos); 
  }
  
  void fish8(int trans){
    //Bottom
    ypos += (15*scale); 
    xpos += (6*scale);
    x -= 11;
    quad(xpos+trans, ypos, xpos-(6*scale)+trans, ypos-(15*scale), xpos+(x*scale)+trans, ypos-(15*scale), xpos+((x-6)*scale)+trans, ypos);
  }
  
  void fish9(int trans){
    //Last
    x -= 6;
    triangle(xpos+trans, ypos, xpos+((0.5*x)*scale)+trans, ypos+(30*scale), xpos+(x*scale)+trans, ypos);
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
  
  int xspacing=16;
  int w=50;
  float theta=0;
  float amp=20;
  float period=50;
  float dx=(TWO_PI/period)*xspacing;
  float[] yvalues;
  
  void calcMove(){
    theta+=0.5;
    float x=theta;
    for(int i=0; i<yvalues.length; i++){
      yvalues[i]=sin(x)*amp;
      x+=dx;
    }
  }
  
  void move(){
    noStroke();
    for(int x=0; x<yvalues.length; x++){
      fish1(x);
      fish2(x);
      fish3(x);
      fish4(x);
      fish5(x);
      fish6(x);
      fish7(x);
      fish8(x);
      fish9(x);
    }
  }
}