import java.util.*;

void makePond(){
  int counter=0;
  while(counter<600){
    int xvalue = (int)(Math.random()*900);
    int yvalue = (int)(Math.random()*675);
    while(pebble(xvalue,yvalue)){
      xvalue = (int)(Math.random()*900);
      yvalue = (int)(Math.random()*675);
    }
    int xpebble = (int)(Math.random()*30)+20;
    int ypebble = (int)(Math.random()*30)+20;
    int greyColor = ((int)(Math.random()*50))*3+80;
    noStroke();
    fill(greyColor, greyColor, greyColor);
    ellipse(xvalue,yvalue,xpebble,ypebble);
    counter++;
  }
  fill(115,230,204,125);
  rect(0,0,900,675);
}

boolean pebble(int x, int y){
  //Checks to see if there's already a stone there
  if(get(x,y)!=-3355444 &&
      get(x+10,y)!=-3355444 &&
      get(x-10,y)!=-3355444 &&
      get(x,y+10)!=-3355444 &&
      get(x,y-10)!=-3355444){
    return true;
  }
  return false;
}