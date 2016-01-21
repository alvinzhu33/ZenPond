import java.util.*;

public class Skeleton{
  float fishx;
  float fishy;
  float len;
  float wid;
  float scale = 1;
  
  float wag = 0;
  boolean reverse = false;
  float orientation;
  
   public Skeleton(float x, float y, float l){
     len = l/9.0;//Include tail later
     wid = l/5.0;
     fishx=x;
     fishy=y;
     orientation=(int)(Math.random()*360);
     bones1(x,y);
     bones2(x,y);
     bones3(x,y);
   }
  
  void bones1(float x, float y){
    noStroke();
    fill(204, 102, 0, 240);
    
    quad((wag+x)+wid/2, 0+y, (wag+x)-wid/2, 
    0+y,(wag*1.01+x)-(wid), len+y, (wag*1.01+x)+(wid), len+y);
    
    quad((wag*1.01+x)+wid, len+y, (wag*1.01+x)-wid, len+y, 
    (wag*1.10)+x-wid, 2*len+y, (wag*1.10)+x+wid, 2*len+y);
    
    quad((wag*1.10)+x+wid, 2*len+y, (wag*1.10)+x-wid, 2*len+y,
    (wag*1.2)+x-wid/1.1, 3*len+y, (wag*1.2)+x+wid/1.1, 3*len+y);
  }
  
  void bones2(float x, float y){
    
    quad((wag*1.2)+x+wid/1.1, 3*len+y,(wag*1.2)+x-wid/1.1, 3*len+y, 
    (wag*1.3)+x-wid/1.2, 4*len+y, (wag*1.3)+x+wid/1.2, 4*len+y);
   
    quad((wag*1.3)+x+wid/1.2, 4*len+y, (wag*1.3)+x-wid/1.2, 4*len+y, 
    (wag*1.4)+x-wid/1.4, 5*len+y, (wag*1.4)+x+wid/1.4, 5*len+y);
    
    quad((wag*1.4)+x+wid/1.4, 5*len+y, (wag*1.4)+x-wid/1.4, 5*len+y, 
    (wag*1.5)+x+6-wid/1.6, 6*len+y, (wag*1.5)+x-6+wid/1.6, 6*len+y);
  }
  
  void bones3(float x, float y){
   beginShape();
   
   //assignment: recreate tail with arcs
   //arc(x, y, width, height, start, stop);
   //arc(x, y, width, height, start, stop);
   //arc(x, y, width, height, start, stop);
   //arc(x, y, width, height, start, stop);

   
      vertex((wag*1.8)+x-12+wid/1.6, 6*len+y-20);
      bezierVertex(((wag*1.5)+x-12+wid/1.6)-(2*scale*3), (6*len+y)+(5*scale*3), ((wag*1.5)+x-12+wid/1.6)+(3*scale*3), (6*len+y)+(6*scale*3), ((wag*1.8)+x-12+wid/1.6)+(7*scale*3), (6*len+y)+(11*scale*3));
      bezierVertex(((wag*2)+x-12+wid/1.6)+(10*scale*3), (6*len+y)+(15*scale*3), ((wag*2)+x-12+wid/1.6)+(14*scale*3), (6*len+y)+(21*scale*3), ((wag*2)+x-12+wid/1.6)+(7*scale*3), (6*len+y)+(29*scale*3));
      bezierVertex(((wag*2)+x-12+wid/1.6)+(9*scale*3), (6*len+y)+(26*scale*3), ((wag*2)+x-12+wid/1.6)+(7*scale*3), (6*len+y)+(22*scale*3), ((wag*2)+x-12+wid/1.6)+(3*scale*3), (6*len+y)+(19*scale*3));
      bezierVertex(((wag*1.8)+x-12+wid/1.6)-(1*scale*3), (6*len+y)+(15*scale*3), ((wag*1.5)+x-12+wid/1.6)-(5*scale*3), (6*len+y)+(8*scale*3), ((wag*1.5)+x-12+wid/1.6)-(2*scale*3), (6*len+y)+(3*scale*3));
   
    endShape();
    
    //void eyes(){
    fill(245,255,235,240);
    ellipse(((wag*1.01)+x)+wid, len+y, 22*scale/2, 22*scale/2);
    ellipse(((wag*1.01)+x)-wid, len+y, 22*scale/2, 22*scale/2);
    fill(0,200,100,250);
    ellipse(((wag*1.01)+x)+wid, len+y-2, 12*scale/2, 12*scale/2);
    ellipse(((wag*1.01)+x)-wid, len+y-2, 12*scale/2, 12*scale/2);
  }
  
  void move(){
    //Random orientation
    if((float)Math.random()*10<1){
      orientation += ((float)Math.random()*11/100.0)-5/100.0;
    }
    fishx+=sin(orientation);
    fishy-=cos(orientation);
    
    pushMatrix();
    translate(fishx,fishy);
    rotate(orientation);
    
    //Wagging motion
    if(reverse){
      wag--;
      if(wag==-len*9/5.0){
        reverse=false;
      }
    }
    else{
      wag++;
      if(wag==len*9/5.0){
        reverse=true;
      }
    }
    
    //Draw fish
    bones1(0,0);
    bones2(0,0);
    bones3(0,0);
    popMatrix();
    
    //grow();
    boundary();
  }
  
  void boundary(){
    if(fishy<-s1.len*10){
      fishy=675+s1.len*10;
    }
    if(fishy>675+s1.len*10){
      fishy=-s1.len*10;
    }
    if(fishx<-s1.len*10){
      fishx=900+s1.len*10;
    }
    if(fishx>900+s1.len*10){
      fishx=-s1.len*10;
    }
  }
  
  /*void grow(){
    System.out.println(millis()%60==0 && len<50);
    if(millis()%60==0 && len<50){
      len += 0.00001;
    }
  }*/
}