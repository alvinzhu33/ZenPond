import java.util.*;

public class Blossom{
  float xpos;
  float ypos;

  float size;
  float angle;
  
  boolean left = false; 
  int leftcount = 0;
  
  //Lilypad colors
  int r;
  int g;
  int b;
  
  float xvalue;
  float yvalue;
  float petal;
  
  float rand = (float)(Math.random()*50)-25; 
  float fxvalue;
  float fyvalue;
  
  boolean up = true; 
  int upcount = 0;
  
  //Large flower colors
  int lr;
  int lg;
  int lb;
  //Small flower colors
  int sr;
  int sg;
  int sb;
  
  public Blossom(String verHor, int pos, int s, int p){
    if(verHor.equals("ver")){
      xpos = pos;
      ypos = (int)(Math.random()*45)*10+120;
    }
    if(verHor.equals("hor")){
      xpos = (int)(Math.random()*70)*10+80;
      ypos = pos;
    }
    size = s;
    angle = (int)(Math.random()*36)*10;
    r = (25+(int)(Math.random()*60));
    g = (87+(int)(Math.random()*60));
    b = (35+(int)(Math.random()*60));
    
    petal = p;
    xvalue = xpos;
    yvalue = ypos;
    fxvalue = xvalue+rand;
    fyvalue = yvalue+rand;
    
    lr = (232+(int)(Math.random()*50));
    lg = (144+(int)(Math.random()*50));
    lb = (203+(int)(Math.random()*50));
    sr = (245+(int)(Math.random()*70));
    sg = (15+(int)(Math.random()*70));
    sb = (76+(int)(Math.random()*70));
  }
  
  void driftLilypad(){
  if (left==true){
   xpos-= 0.05; 
   leftcount++;
   if(leftcount >= 50){
     left = false;
     leftcount = 0; 
   }
  }
  if(left==false){
    xpos+= 0.05;
    leftcount++; 
    if(leftcount >= 50){
     left = true;
     leftcount = 0; 
   }
  }
 }
  
  public void drawLilypad(){
    driftLilypad();
    noStroke();
    pushMatrix();
    translate(xpos,ypos);
    rotate(angle);
    fill(r, g, b);
    beginShape();
    arc(0,0,size,size, -PI*14/15,PI*19/20);
    endShape();
    popMatrix();
   }
  
void driftFlower(){
  if (up==true){
   fyvalue-= 0.14; 
   upcount++;
   if(upcount >= 50){
     up = false;
     upcount = 0; 
   }
  }
  if(up==false){
    fyvalue+= 0.14;
    upcount++; 
    if(upcount >= 50){
     up = true;
     upcount = 0; 
   }
  }
}
  
   public void drawFlower(){
    driftFlower(); 
    
    //Larger flower
    int degrees=0;
    int start=60;
    fill(232,144,203);
    while(degrees<360){
      pushMatrix();
      translate(fxvalue, fyvalue);
      rotate(radians(start + degrees));
      noStroke();
      beginShape();
        vertex(0,0);
        bezier(0,0,petal/2,petal/2,petal/5,petal,0,petal);
        bezier(0,0,-petal/2,petal/2,-petal/5,petal,0,petal);
      endShape();
      popMatrix();
      degrees+=60;
    }
    
    //Smaller flower
    degrees=30;
    float tempsize=petal*3/4;
    fill(sr,sg,sb,180);
    while(degrees<390){
      pushMatrix();
      translate(fxvalue,fyvalue);
      rotate(radians(start + degrees));
      noStroke();
      beginShape();
        vertex(0,0);
        bezier(0,0,tempsize/2,tempsize/2,tempsize/5,tempsize,0,tempsize);
        bezier(0,0,-tempsize/2,tempsize/2,-tempsize/5,tempsize,0,tempsize);
      endShape();
      popMatrix();
      degrees+=60;
    }
  }
  
  void drawBlossom(){
    drawLilypad();
    drawFlower();
  }
}