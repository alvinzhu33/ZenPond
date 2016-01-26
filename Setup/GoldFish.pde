public class GoldFish extends FishObject{
  
  public GoldFish(float x, float y, float l){
    super(x,y,l);
    wid = wid*.8;
    len = len*.8;
  } 
  
  void bones1(float x, float y, int r, int g, int b){
    noStroke();
    
    //Upper body
    fill(r, g, b, 240);
    
    
    quad((wag+x)+wid/2, 0+y, (wag+x)-wid/2, 0+y,
    (wag*1.01+x)-(wid), len+y, (wag*1.01+x)+(wid), len+y);
    quad((wag*1.01+x)+wid, len+y, (wag*1.01+x)-wid, len+y, 
    (wag*1.10)+x-wid, 2*len+y, (wag*1.10)+x+wid, 2*len+y);
    quad((wag*1.10)+x+wid, 2*len+y, (wag*1.10)+x-wid, 2*len+y,
    (wag*1.2)+x-wid/1.1, 3*len+y, (wag*1.2)+x+wid/1.1, 3*len+y);
    
    //Eyes
    fill(245,255,235,240);
    ellipse(((wag*1.01)+x)+wid, len+y, 34*len/20, 34*len/20);
    ellipse(((wag*1.01)+x)-wid, len+y, 34*len/20, 34*len/20);
    fill(r-60, g+50, b+50, 240);
    ellipse(((wag*1.01)+x)+wid, len+y-2, 20*len/20, 20*len/20);
    ellipse(((wag*1.01)+x)-wid, len+y-2, 20*len/20, 20*len/20);
    fill(r, g, b, 240);
  }
  
  void bones3(float x, float y){
    //Tail
   
    beginShape();
      vertex((wag*1.5)+x, 4*len+y);
      
      bezierVertex((((wag/2)*1.5)+x+wid/1.6), (9*len+y), 
                    (((wag/2)*1.8)+x+wid/1.6)-tailchange, (11*len+y), 
                    (((wag/2)*1.5)+x-wid/1.6)+tailchange, (13*len+y));
      
      bezierVertex((((wag/2)*1.5)+x-wid/1.6)+tailchange, (13*len+y), 
                    (((wag/2)*1.8)+x-wid/1.6)-tailchange, (11*len+y), 
                    (((wag/2)*1.5)+x-wid/1.6), (9*len+y));                 
    endShape();
    
    beginShape();
      vertex((wag*1.5)+x, 4*len+y);
      
      bezierVertex((((-wag/10)*1.5)+x+wid/1.6), (9*len+y), 
                    (((-wag/10)*1.8)+x+wid/1.6)-tailchange, (11*len+y), 
                    (((-wag/10)*1.5)+x-wid/1.6)+tailchange, (13*len+y));
      
      bezierVertex((((-wag/10)*1.5)+x-wid/1.6)+tailchange, (13*len+y), 
                    (((-wag/10)*1.8)+x-wid/1.6)-tailchange, (11*len+y), 
                    (((-wag/10)*1.5)+x-wid/1.6), (9*len+y));                 
    endShape();
    
  }
  
  void move(){
    if((float)Math.random()*10<1){
      orientation += ((float)Math.random()*11/100.0)-5/100.0;
    }
    fishx+=(sin(orientation))*2;
    fishy-=(cos(orientation))*2;
    
    pushMatrix();
    translate(fishx,fishy);
    rotate(orientation);
    
    //Wagging motion
    if(reverse){
      wag--;
      if(wag<=-(len*9.0/5.0)){
        reverse=false;
        wag=-(len*9/5)+1;
      }
    }
    else{
      wag++;
      if(wag>=(len*9.0/5.0)){
        reverse=true;
        wag=(len*9/5)-1;
      }
    }
    boundary();
    
    //Draw fish
    bones1(0,0, 227, 119, 11);
    bones2(0,0);
    bones3(0,0);
    popMatrix();
    
    if(tailchange<20 && reverse==false){
      tailchange++;
    }
    if(tailchange >= 20){
      reverse = true;
      tailchange--;
    }
    if(tailchange<20 && reverse==true){
        tailchange--;
    }
    if(tailchange<-10 && reverse==true){
      reverse=false;
      tailchange++;
    }
    
    grow();
  }
  
  void boundary(){
    if(fishy<-len*10){
      fishy=680;
    }
    if(fishy>675+len*10){
      fishy=-10;
    }
    if(fishx<-len*10){
      fishx=910;
    }
    if(fishx>900+len*10){
      fishx=-10;
    }
  }
  
  void grow(){
    if(len<=7 && millis()%10000>9000 && millis()%10000<10000){
        len=len*1.003;
        wid=wid*1.003;
    }
  }
}