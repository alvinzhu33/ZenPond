import java.util.*;

public class FishObject{   
  float xpos;
  float ypos;
  float scale; //0.5 is default
  float x = 70; //variable used to help constuct sizes
  float degrees=1;
  
  public FishObject(float size, float x, float y){
    scale = size;
    xpos = x;
    ypos = y;
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
  
  void fish1(float trans){
    //Upper Head
    quad(ypos, xpos+trans, ypos-(15*scale), xpos+(12*scale)+trans, ypos-(15*scale), xpos+(48*scale)+trans, ypos, xpos+(60*scale)+trans);
  }
  
  void fish2(float trans){
    //Lower head
    xpos -= (5*scale);
    ypos += (15*scale);
    quad(ypos, xpos+trans, ypos-(15*scale), xpos+(5*scale)+trans, ypos-(15*scale), xpos+(65*scale)+trans, ypos, xpos+(70*scale)+trans);
  }
  
  void fish3(float trans){
    //Upper middle
    xpos -= (3*scale);
    ypos += (15*scale);
    x += 6;
    quad(ypos, xpos+trans, ypos-(15*scale), xpos+(3*scale)+trans, ypos-(15*scale), xpos+((-3+x)*scale)+trans, ypos, xpos+(x*scale)+trans);
  }
  
  void fish4(float trans){
    //Middle
    ypos += (15*scale);
    quad(ypos, xpos+trans, ypos-(15*scale), xpos+trans, ypos-(15*scale), xpos+(x*scale)+trans, ypos, xpos+(x*scale)+trans);
  }
  
  void fish5(float trans){
    //Lower middle
    ypos += (15*scale); 
    xpos += (3*scale);
    x -= 6;
    quad(ypos, xpos+trans, ypos-(15*scale), xpos-(3*scale)+trans, ypos-(15*scale), xpos+((3+x)*scale)+trans, ypos, xpos+(x*scale)+trans);
  }
  
  void fish6(float trans){
    //Upper bottom
    ypos += (15*scale); 
    xpos += (3*scale);
    x -= 6;
    quad(ypos, xpos+trans, ypos-(15*scale), xpos-(3*scale)+trans, ypos-(15*scale), xpos+((3+x)*scale)+trans, ypos, xpos+(x*scale)+trans);
  }
  
  void fish7(float trans){
    //lower bottom
    ypos += (15*scale); 
    xpos += (5*scale);
    x -= 5;
    quad(ypos, xpos+trans, ypos-(15*scale), xpos-(5*scale)+trans, ypos-(15*scale), xpos+(x*scale)+trans, ypos, xpos+((x-5)*scale)+trans); 
  }
  
  void fish8(float trans){
    //Bottom
    ypos += (15*scale); 
    xpos += (6*scale);
    x -= 11;
    quad(ypos, xpos+trans, ypos-(15*scale), xpos-(6*scale)+trans, ypos-(15*scale), xpos+(x*scale)+trans, ypos, xpos+((x-6)*scale)+trans);
  }
  
  void fish9(float trans){
    //Last
    x -= 6;
    triangle(ypos, xpos+trans, ypos+(30*scale), xpos+((0.5*x)*scale)+trans, ypos, xpos+(x*scale)+trans);
  }
  
  void tail(){
    fill(255,128,0);
    xpos += ((0.57*x)*scale);
    ypos += (20*scale);
    
    beginShape();
      vertex(ypos, xpos);
      bezierVertex(ypos+(5*scale*3), xpos-(2*scale*3), ypos+(6*scale*3), xpos+(3*scale*3), ypos+(11*scale*3), xpos+(7*scale*3));
      bezierVertex(ypos+(15*scale*3), xpos+(10*scale*3), ypos+(21*scale*3), xpos+(14*scale*3), ypos+(29*scale*3), xpos+(7*scale*3));
      bezierVertex(ypos+(26*scale*3), xpos+(9*scale*3), ypos+(22*scale*3), xpos+(7*scale*3), ypos+(19*scale*3), xpos+(3*scale*3));
      bezierVertex(ypos+(15*scale*3), xpos-(1*scale*3), ypos+(8*scale*3), xpos-(5*scale*3), ypos+(3*scale*3), xpos-(2*scale*3));  
    endShape();
  }
  
  void eyes(){
    fill(245,255,235);
    ellipse(ypos-(100*scale), xpos-(10*scale), 22*scale, 22*scale);
    ellipse(ypos-(100*scale), xpos+(50*scale), 22*scale, 22*scale);
    fill(0,200,100);
    ellipse(ypos-(103*scale), xpos-(10*scale), 12*scale, 12*scale);
    ellipse(ypos-(103*scale), xpos+(50*scale), 12*scale, 12*scale);
  }
  
  /*float xspacing=16;
  float w=50;
  float theta=0;
  float amp=20;
  float period=50;
  float dx=(TWO_PI/period)*xspacing;
  float[] yvalues=new float[w/xspacing];
  
  void calcMove(){
    theta+=0.5;
    float x=theta;
    for(float i=0; i<yvalues.length; i++){
      yvalues[i]=sin(x)*amp;
      x+=dx;
    }
  }
  
  void move(){
    noStroke();
    for(float x=0; x<yvalues.length; x++){
      fill(25);
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
  }*/
}