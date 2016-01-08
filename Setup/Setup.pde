import java.util.*;

void setup(){
  size(900,675);
  int counter=0;
  while(counter<500){
    int xvalue = (int)(Math.random()*900);
    int yvalue = (int)(Math.random()*675);
    while(pebble){
      int xvalue = (int)(Math.random()*900);
      int yvalue = (int)(Math.random()*675);
    }
    int xpebble = (int)(Math.random()*30)+20;
    int ypebble = (int)(Math.random()*30)+20;
    int greyColor = ((int)(Math.random()*50))*3+100;
    noStroke();
    fill(greyColor, greyColor, greyColor);
    ellipse(xvalue,yvalue,xpebble,ypebble);
    counter++;
  }
  fill(115,230,204,125);
  rect(0,0,900,675);
}

boolean pebble(x,y){
  if(get(x,y,5,5)!="(255,255,255)"){
    return true;
  }
  return false;
}