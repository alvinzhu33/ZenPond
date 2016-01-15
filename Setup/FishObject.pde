import java.util.*;

public class FishObject{   
  float xpos;
  float ypos;
  float scale; //0.5 is default
  float x = 70.0; //variable used to help constuct sizes
  
  float diameter;
  float t = 0.0;

  float amplitude;
  float frequency = 0.2;
  
  
  public FishObject(float dia, float amp, float x, float y){
    diameter = dia;
    amplitude = amp;
    scale = 0.1;
    xpos = y;
    ypos = x; //due to rotation, ypos is xpos 
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
    //eyes();
    //tail();
  }
  
  void fish1(float trans){
    //Upper Head
    
    quad(ypos*diameter, amplitude*sin(frequency*(t+(xpos+trans)))+height/2, 
        (ypos-(15*scale))*diameter, amplitude*sin(frequency*(t+(xpos+(12*scale)+trans)))+height/2, 
        (ypos-(15*scale))*diameter, amplitude*sin(frequency*(t+(xpos+(48*scale)+trans)))+height/2, 
        ypos*diameter, amplitude*sin(frequency*(t+(xpos+(60*scale)+trans)))+height/2);
     
  }
  
  void fish2(float trans){
    //Lower head
    xpos -= (5*scale);
    ypos += (15*scale);
    quad(ypos*diameter, amplitude*sin(frequency*(t+(xpos+trans)))+height/2, 
        (ypos-(15*scale))*diameter, amplitude*sin(frequency*(t+(xpos+(5*scale)+trans)))+height/2, 
        (ypos-(15*scale))*diameter, amplitude*sin(frequency*(t+(xpos+(65*scale)+trans)))+height/2, 
        ypos*diameter, amplitude*sin(frequency*(t+(xpos+(70*scale)+trans)))+height/2);
  }
  
  void fish3(float trans){
    //Upper middle
    xpos -= (3*scale);
    ypos += (15*scale);
    x += 6;
    quad(ypos*diameter, amplitude*sin(frequency*(t+(xpos+trans)))+height/2, 
        (ypos-(15*scale))*diameter, amplitude*sin(frequency*(t+(xpos+(3*scale)+trans)))+height/2, 
        (ypos-(15*scale))*diameter, amplitude*sin(frequency*(t+(xpos+((-3+x)*scale)+trans)))+height/2, 
        ypos*diameter, amplitude*sin(frequency*(t+(xpos+(x*scale)+trans)))+height/2);
  }
  
  void fish4(float trans){
    //Middle
    ypos += (15*scale);
    quad(ypos*diameter, amplitude*sin(frequency*(t+(xpos+trans)))+height/2, 
        (ypos-(15*scale))*diameter, amplitude*sin(frequency*(t+(xpos+trans)))+height/2, 
        (ypos-(15*scale))*diameter, amplitude*sin(frequency*(t+(xpos+(x*scale)+trans)))+height/2, 
        ypos*diameter, amplitude*sin(frequency*(t+(xpos+(x*scale)+trans)))+height/2);
  }
  
  void fish5(float trans){
    //Lower middle
    ypos += (15*scale); 
    xpos += (3*scale);
    x -= 6;
    quad(ypos*diameter, amplitude*sin(frequency*(t+(xpos+trans)))+height/2, 
        (ypos-(15*scale))*diameter, amplitude*sin(frequency*(t+(xpos-(3*scale)+trans)))+height/2, 
        (ypos-(15*scale))*diameter, amplitude*sin(frequency*(t+(xpos+((3+x)*scale)+trans)))+height/2, 
        ypos*diameter, amplitude*sin(frequency*(t+(xpos+(x*scale)+trans)))+height/2);
  }
  
  void fish6(float trans){
    //Upper bottom
    ypos += (15*scale); 
    xpos += (3*scale);
    x -= 6;
    quad(ypos*diameter, amplitude*sin(frequency*(t+(xpos+trans)))+height/2, 
        (ypos-(15*scale))*diameter, amplitude*sin(frequency*(t+(xpos-(3*scale)+trans)))+height/2, 
        (ypos-(15*scale))*diameter, amplitude*sin(frequency*(t+(xpos+((3+x)*scale)+trans)))+height/2, 
        (ypos)*diameter, amplitude*sin(frequency*(t+(xpos+(x*scale)+trans)))+height/2);
  }
  
  void fish7(float trans){
    //lower bottom
    ypos += (15*scale); 
    xpos += (5*scale);
    x -= 5;
    quad((ypos)*diameter, amplitude*sin(frequency*(t+(xpos+trans)))+height/2, 
        (ypos-(15*scale))*diameter, amplitude*sin(frequency*(t+(xpos-(5*scale)+trans)))+height/2, 
        (ypos-(15*scale))*diameter, amplitude*sin(frequency*(t+(xpos+(x*scale)+trans)))+height/2, 
        (ypos)*diameter, amplitude*sin(frequency*(t+(xpos+((x-5)*scale)+trans)))+height/2); 
  }
  
  void fish8(float trans){
    //Bottom
    ypos += (15*scale); 
    xpos += (6*scale);
    x -= 11;
    quad((ypos)*diameter, amplitude*sin(frequency*(t+(xpos+trans)))+height/2, 
        (ypos-(15*scale))*diameter, amplitude*sin(frequency*(t+(xpos-(6*scale)+trans)))+height/2, 
        (ypos-(15*scale))*diameter, amplitude*sin(frequency*(t+(xpos+(x*scale)+trans)))+height/2, 
        (ypos)*diameter, amplitude*sin(frequency*(t+(xpos+((x-6)*scale)+trans)))+height/2);
  }
  
  void fish9(float trans){
    //Last
    x -= 6;
    triangle((ypos)*diameter, amplitude*sin(frequency*(t+(xpos+trans)))+height/2, 
             (ypos+(30*scale))*diameter, amplitude*sin(frequency*(t+(xpos+((0.5*x)*scale)+trans)))+height/2, 
             (ypos)*diameter, amplitude*sin(frequency*(t+(xpos+(x*scale)+trans)))+height/2);
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
}