public class Flower{
  float xvalue;
  float yvalue;
  int size;
  
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
  
  public Flower(int x, int y, int s){
    xvalue = x;
    yvalue = y;
    size = s;
    lr = (232+(int)(Math.random()*50));
    lg = (144+(int)(Math.random()*50));
    lb = (203+(int)(Math.random()*50));
    sr = (245+(int)(Math.random()*70));
    sg = (15+(int)(Math.random()*70));
    sb = (76+(int)(Math.random()*70));
  }
  
void drift(){
  if (up==true){
   yvalue-= 0.14; 
   upcount++;
   if(upcount >= 50){
     up = false;
     upcount = 0; 
   }
  }
  if(up==false){
    yvalue+= 0.14;
    upcount++; 
    if(upcount >= 50){
     up = true;
     upcount = 0; 
   }
  }
 }
  
 public void drawFlower(){
    //Larger flower
    drift(); 
    int degrees=0;
    int start=60;
    fill(232,144,203);
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
    fill(sr,sg,sb,180);
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