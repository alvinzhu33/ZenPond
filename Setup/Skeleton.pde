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
    //Fill();
    noStroke();
    fill(204, 102, 0, 240);
    //The space between two beziers is one quad
    quad((wag+x)+wid/2, 0+y, (wag+x)-wid/2, 
    0+y,(wag*1.01+x)-(wid), len+y, (wag*1.01+x)+(wid), len+y);
    
    quad((wag*1.01+x)+wid, len+y, (wag*1.01+x)-wid, len+y, 
    (wag*1.10)+x-wid, 2*len+y, (wag*1.10)+x+wid, 2*len+y);
    
    quad((wag*1.10)+x+wid, 2*len+y, (wag*1.10)+x-wid, 2*len+y,
    (wag*1.2)+x-wid/1.1, 3*len+y, (wag*1.2)+x+wid/1.1, 3*len+y);
    //bezier((xpos+wag*1.10)+x, ypos+2*len+y, (xpos+wag*1.2)+x, ypos+3*len+y);
  }
  
  void bones2(float x, float y){
    
    quad((wag*1.2)+x+wid/1.1, 3*len+y,(wag*1.2)+x-wid/1.1, 3*len+y, 
    (wag*1.3)+x-wid/1.2, 4*len+y, (wag*1.3)+x+wid/1.2, 4*len+y);
   
    quad((wag*1.3)+x+wid/1.2, 4*len+y, (wag*1.3)+x-wid/1.2, 4*len+y, 
    (wag*1.4)+x-wid/1.4, 5*len+y, (wag*1.4)+x+wid/1.4, 5*len+y);
    
    quad((wag*1.4)+x+wid/1.4, 5*len+y, (wag*1.4)+x-wid/1.4, 5*len+y, 
    (wag*1.5)+x+6-wid/1.6, 6*len+y, (wag*1.5)+x-6+wid/1.6, 6*len+y);
    //bezier(, (xpos+wag*1.4)+x, ypos+5*len+y, (xpos+wag*1.5)+x, ypos+6*len+y);
  }
  
  void bones3(float x, float y){
   beginShape();
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
    //turn(0); //PI/2 = goes down, 3*PI/2 = goes up, PI = left, 0 = right unit circle
   
    /*if(((float)Math.random()*1000)<2 || spin > 0){
      if (spin == 0){
        spin = 30; 
        totalangle += 30; 
      }
      orientation += (PI/3)/30;
      spin--;
      
   }else{
     if (totalangle == 360){
       totalangle = 0;
     }
     if (totalangle == 0){
       fishy -= 1;
     }
     if (totalangle == 30){
       fishy -= 1;
       fishx += 1; 
     }
     if (totalangle == 60){
       fishy += 0.5;
       fishx += 1.2;
     }
     if (totalangle == 90){
       fishy += 1;
     }
     if (totalangle == 120){
       fishy += .5;
       fishx += 1;
     }
     if (totalangle == 150){
       fishy += 1.2;
       fishx += .1;
     }
     if (totalangle == 180){
       fishy += 1; 
     }
    if (totalangle == 210){
       fishy += 1;
       fishx -= .5;
     }
     if (totalangle == 240){
       fishy += .5;
       fishx -= 1;
     }
     if (totalangle == 270){
       fishx -= -1;
     }
     if (totalangle == 300){
       fishx -= 1;
       fishy -= .5;
     }
     if (totalangle == 330){
       fishx -= .5;
       fishy -= 1;
     }
     if (totalangle == 360){
       fishy -= 1;
     }
   }*/
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
    bones1(0,0);
    bones2(0,0);
    bones3(0,0);
    popMatrix();
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
}