import java.util.*;

void setup(){
  size(900,675);
  int counter=0;
  while(counter<750){
    int xvalue = (int)(Math.random()*900);
    int yvalue = (int)(Math.random()*675);
    int xpebble = (int)(Math.random()*30+20);
    int ypebble = (int)(Math.random()*30+20);
    int greyColor = ((int)(Math.random()*15))*10+100;
    stroke(greyColor);
    fill(greyColor, greyColor, greyColor);
    ellipse(xvalue,yvalue,xpebble,ypebble);
    counter++;
  }
  fill(116,230,219,125);
  rect(0,0,900,675);
}