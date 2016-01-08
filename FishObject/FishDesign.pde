int xpos = 100;
int ypos = 50;
float x = 70;
float y = 15;

void setup() {
  size(700,500);
  noLoop();
}

void draw() {
  background(255);
  noStroke();
  fill(255,128,0);
  

  quad(xpos, ypos, xpos+12, ypos-y, xpos-12+x-10, ypos-y, xpos+x-10, ypos);
  
  xpos -= 5;
  ypos += y;
  x += 2;
  quad(xpos, ypos, xpos+5, ypos-y, xpos-7+x, ypos-y, xpos+x, ypos);
  
  xpos -= 3;
  ypos += y;
  x += 6;
  quad(xpos, ypos, xpos+3, ypos-y, xpos-3+x, ypos-y, xpos+x, ypos);
  
  ypos += y;
  quad(xpos, ypos, xpos, ypos-y, xpos+x, ypos-y, xpos+x, ypos);
  
  for(int i=0; i<2; i++){
    ypos += y; 
    xpos += 3;
    x -= 6;
    quad(xpos, ypos, xpos-3, ypos-y, xpos+3+x, ypos-y, xpos+x, ypos);
  }
  
  ypos += y; 
  xpos += 5;
  x -= 5;
  quad(xpos, ypos, xpos-5, ypos-y, xpos+x, ypos-y, xpos+x-5, ypos);
  
  ypos += y; 
  xpos += 6;
  x -= 11;
  quad(xpos, ypos, xpos-6, ypos-y, xpos+x, ypos-y, xpos+x-6, ypos);
  
  //xpos -= 1;
  x -= 6;
  triangle(xpos, ypos, xpos+(0.5*x), ypos+2*y, xpos+x, ypos);
  
  //tail
  xpos += 0.11*x;
  ypos += 20;
  beginShape();
  vertex(xpos+20, ypos);
  
  bezierVertex(xpos+20, ypos+10, xpos+70, ypos+50, xpos+20, ypos+100);
  
  bezierVertex(xpos-20, ypos+70, xpos+40, ypos+30, xpos+5, ypos-20);
  
  endShape();


  //move();
  //display();
}


//quad(x1, y1, x2, y2, x3, y3, x4, y4)
void display(){
  noStroke();
  fill(255,128,0);
  quad(xpos, ypos, xpos+5, ypos-y, xpos-5+x, ypos-y, xpos+x, ypos);
  ypos += 20;
  quad(xpos, ypos, xpos+5, ypos-y, xpos-5+x, ypos-y, xpos+x, ypos);
}
