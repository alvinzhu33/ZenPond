import java.util.*;

public class Skeleton{
  float len;
  float wid = 20;
  float scale = 1;
  float spin = 0;
  float totalangle = 0;
  
  float wag = 0;
  boolean reverse = false;
  float orientation=0;
  
   public Skeleton(float x, float y, float l){
     len = l/9;//Include tail later
     bones1(x,y);
     bones2(x,y);
     bones3(x,y);
   }
  
  void bones1(float x, float y){
    //Fill();
    noStroke();
    fill(204, 102, 0);
    //The space between two beziers is one quad
    quad(((0+wag)+x)+wid/2, 0+y, ((0+wag)+x)-wid/2, 
    0+y,((0+wag*1.01)+x)-(wid), 0+len+y, ((0+wag*1.01)+x)+(wid), 0+len+y);
    
    quad(((0+wag*1.01)+x)+wid, 0+len+y, ((0+wag*1.01)+x)-wid, 0+len+y, 
    (0+wag*1.10)+x-wid, 0+2*len+y, (0+wag*1.10)+x+wid, 0+2*len+y);
    
    quad((0+wag*1.10)+x+wid, 0+2*len+y, (0+wag*1.10)+x-wid, 0+2*len+y,
    (0+wag*1.2)+x-wid/1.1, 0+3*len+y, (0+wag*1.2)+x+wid/1.1, 0+3*len+y);
    //bezier((xpos+wag*1.10)+x, ypos+2*len+y, (xpos+wag*1.2)+x, ypos+3*len+y);
  }
  
  void bones2(float x, float y){
    
    quad((0+wag*1.2)+x+wid/1.1, 0+3*len+y,(0+wag*1.2)+x-wid/1.1, 0+3*len+y, 
    (0+wag*1.3)+x-wid/1.2, 0+4*len+y, (0+wag*1.3)+x+wid/1.2, 0+4*len+y);
   
    quad((0+wag*1.3)+x+wid/1.2, 0+4*len+y, (0+wag*1.3)+x-wid/1.2, 0+4*len+y, 
    (0+wag*1.4)+x-wid/1.4, 0+5*len+y, (0+wag*1.4)+x+wid/1.4, 0+5*len+y);
    
    quad((0+wag*1.4)+x+wid/1.4, 0+5*len+y, (0+wag*1.4)+x-wid/1.4, 0+5*len+y, 
    (0+wag*1.5)+x+6-wid/1.6, 0+6*len+y, (0+wag*1.5)+x-6+wid/1.6, 0+6*len+y);
    //bezier(, (xpos+wag*1.4)+x, ypos+5*len+y, (xpos+wag*1.5)+x, ypos+6*len+y);
  }
  
  void bones3(float x, float y){
    /*
    quad((xpos+wag*1.5)+x+wid/1.6, ypos+6*len+y, (xpos+wag*1.5)+x-wid/1.6, ypos+6*len+y, 
    (xpos+wag*1.65)+x-wid/1.8, ypos+7*len+y, (xpos+wag*1.65)+x+wid/1.8, ypos+7*len+y);
    
    quad((xpos+wag*1.65)+x+wid/1.8, ypos+7*len+y, (xpos+wag*1.65)+x-wid/1.8, ypos+7*len+y, 
    (xpos+wag*1.8)+x-wid/2.1, ypos+8*len+y, (xpos+wag*1.8)+x+wid/2.1, ypos+8*len+y);
    
    triangle((xpos+wag*1.8)+x+wid/2, ypos+8*len+y, (xpos+wag*1.8)+x-wid/2, ypos+8*len+y, (xpos+wag*2)+x, ypos+9*len+y);
    //bezier(, , (xpos+wag*2)+x, ypos+9*len+y);
   
    */
    //can't see the tail yet though because xpos and ypos has to be added the appropriate amount
    beginShape();
      vertex((0+wag*1.8)+x-12+wid/1.6, 0+6*len+y-20);
      bezierVertex(((0+wag*1.5)+x-12+wid/1.6)-(2*scale*3), (0+6*len+y)+(5*scale*3), ((0+wag*1.5)+x-12+wid/1.6)+(3*scale*3), (0+6*len+y)+(6*scale*3), ((0+wag*1.8)+x-12+wid/1.6)+(7*scale*3), (0+6*len+y)+(11*scale*3));
      bezierVertex(((0+wag*2)+x-12+wid/1.6)+(10*scale*3), (0+6*len+y)+(15*scale*3), ((0+wag*2)+x-12+wid/1.6)+(14*scale*3), (0+6*len+y)+(21*scale*3), ((0+wag*2)+x-12+wid/1.6)+(7*scale*3), (0+6*len+y)+(29*scale*3));
      bezierVertex(((0+wag*2)+x-12+wid/1.6)+(9*scale*3), (0+6*len+y)+(26*scale*3), ((0+wag*2)+x-12+wid/1.6)+(7*scale*3), (0+6*len+y)+(22*scale*3), ((0+wag*2)+x-12+wid/1.6)+(3*scale*3), (0+6*len+y)+(19*scale*3));
      bezierVertex(((0+wag*1.8)+x-12+wid/1.6)-(1*scale*3), (0+6*len+y)+(15*scale*3), ((0+wag*1.5)+x-12+wid/1.6)-(5*scale*3), (0+6*len+y)+(8*scale*3), ((0+wag*1.5)+x-12+wid/1.6)-(2*scale*3), (0+6*len+y)+(3*scale*3));
    endShape();
    
    //void eyes(){
    fill(245,255,235);
    ellipse(((0+wag*1.01)+x)+wid, 0+len+y, 22*scale/2, 22*scale/2);
    ellipse(((0+wag*1.01)+x)-wid, 0+len+y, 22*scale/2, 22*scale/2);
    fill(0,200,100);
    ellipse(((0+wag*1.01)+x)+wid, 0+len+y-2, 12*scale/2, 12*scale/2);
    ellipse(((0+wag*1.01)+x)-wid, 0+len+y-2, 12*scale/2, 12*scale/2);
  
  }
  
  void move(float x, float y){
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
      orientation += ((float)Math.random()*11/100)-5/100.;
    }
    fishx+=sin(orientation);
    fishy-=cos(orientation);
    pushMatrix();
    translate(x,y);
    rotate(orientation);
    //Wagging motion
    if(reverse){
      wag--;
      if(wag==-len*9/5){
        reverse=false;
      }
    }
    else{
      wag++;
      if(wag==len*9/5){
        reverse=true;
      }
    }
    bones1(0,0);
    bones2(0,0);
    bones3(0,0);
    popMatrix();
  }
  
  /*void turn(float angle){
   xpos = xpos+sin(angle);
   ypos = ypos+cos(angle); 
  }*/
  
  /*void step1(float x, float y){
    bezier(xpos+x*1.2+20, ypos+y, xpos+x*1.10+14, ypos+len+y, xpos+x*1.01+6, ypos+2*len+y, xpos+x+2, ypos+3*len+y);
    bezier(xpos+x, ypos+3*len+y, xpos+x, ypos+4*len+y, xpos+x, ypos+5*len+y, xpos+x, ypos+6*len+y);
    bezier(xpos+x, ypos+6*len+y, xpos+x*1.01, ypos+7*len+y, xpos+x*1.10, ypos+8*len+y, xpos+x*1.2, ypos+9*len+y);
  }
  
  void step2(float x, float y){
    bezier(xpos+x+40, ypos+3*len+y, xpos+x*1.01+34, ypos+2*len+y, xpos+x*1.10+26, ypos+len+y, xpos+x*1.2+20, ypos+y);
    bezier(xpos+x*1.2+20, ypos+y, xpos+x*1.10+14, ypos+len+y, xpos+x*1.01+6, ypos+2*len+y, xpos+x+2, ypos+3*len+y);
    bezier(xpos+x, ypos+3*len+y, xpos+x, ypos+4*len+y, xpos+x, ypos+5*len+y, xpos+x, ypos+6*len+y);
  }
  
  void step3(float x, float y){
    bezier(xpos+x+40, ypos+6*len+y, xpos+x+40, ypos+5*len+y, xpos+x+40, ypos+4*len+y, xpos+x+40, ypos+3*len+y);
    bezier(xpos+x+40, ypos+3*len+y, xpos+x*1.01+34, ypos+2*len+y, xpos+x*1.10+26, ypos+len+y, xpos+x*1.2+20, ypos+y);
    bezier(xpos+x*1.2+20, ypos+y, xpos+x*1.10+14, ypos+len+y, xpos+x*1.01+6, ypos+2*len+y, xpos+x+2, ypos+3*len+y);
  }
  
  void step4(float x, float y){
    bezier(xpos+x+40, ypos+9*len+y, xpos+x+40, ypos+8*len+y, xpos+x+40, ypos+7*len+y, xpos+x+40, ypos+6*len+y);
    bezier(xpos+x+40, ypos+6*len+y, xpos+x+40, ypos+5*len+y, xpos+x+40, ypos+4*len+y, xpos+x+40, ypos+3*len+y);
    bezier(xpos+x+40, ypos+3*len+y, xpos+x*1.01+34, ypos+2*len+y, xpos+x*1.10+26, ypos+len+y, xpos+x*1.2+20, ypos+y);
  }
  
  void step5(float x, float y){
    bezier(xpos+x+40, ypos+12*len+y, xpos+x+40, ypos+11*len+y, xpos+x+40, ypos+10*len+y, xpos+x+40, ypos+9*len+y);
    bezier(xpos+x+40, ypos+9*len+y, xpos+x+40, ypos+8*len+y, xpos+x+40, ypos+7*len+y, xpos+x+40, ypos+6*len+y);
    bezier(xpos+x+40, ypos+6*len+y, xpos+x+40, ypos+5*len+y, xpos+x+40, ypos+4*len+y, xpos+x+40, ypos+3*len+y);
  }
  
  void uturn(float x, float y){
    noFill();
    stroke(255);
    if((millis()/1000)%10<2){
      step1(x, y);
    }
    if((millis()/1000)%10<4 && (millis()/1000)%10>=2){
      step2(x, y);
    }
    if((millis()/1000)%10<6 && (millis()/1000)%10>=4){
      step3(x, y);
    }
    if((millis()/1000)%10<8 && (millis()/1000)%10>=6){
      step4(x, y);
    }
    if((millis()/1000)%10<10 && (millis()/1000)%10>=8){
      step5(x, y);
    }
  }*/
}