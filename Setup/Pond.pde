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

void lillypad(){
  //Lillypad 1
  pushMatrix();
  translate(110,570);
  rotate(radians(130));
  fill(25,87,35);
  beginShape();
  arc(0,0,150,150, -PI*14/15,PI*19/20);
  endShape();
  popMatrix();
  
  //Lillypad 2
  pushMatrix();
  translate(800,170);
  rotate(radians(330));
  fill(32,110,45);
  beginShape();
  arc(0,0,120,120, -PI*14/15,PI*19/20);
  endShape();
  popMatrix();
  
  //Lillypad 3
  pushMatrix();
  translate(680,70);
  rotate(radians(270));
  fill(27,172,51);
  beginShape();
  arc(0,0,90,90, -PI*14/15,PI*19/20);
  endShape();
  popMatrix();
}

void flowers(int xvalue, int yvalue, int size){
  int degrees=0;
  int start=(int)(Math.random()*6)*10;
  while(degrees<360){
    pushMatrix();
    translate(xvalue,yvalue);
    rotate(radians(start + degrees));
    fill(232,144,203);
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