double xpos = 100;
double ypos = 50;
double scale = 
double x = 70; //create fixed proportions for size 
//double y = 15;

void setup() {
  size(700,500);
  noLoop();
}

void draw() {
  background(255);
  noStroke();
  fill(255,128,0);
  

  quad(xpos, ypos, xpos+12, ypos-15, xpos+48, ypos-15, xpos+60, ypos);
  
  xpos -= 5;
  ypos += 15;
  quad(xpos, ypos, xpos+5, ypos-15, xpos+65, ypos-15, xpos+72, ypos);
  
  xpos -= 3;
  ypos += y;
  x += 6;
  quad(xpos, ypos, xpos+3, ypos-15, xpos-3+x, ypos-15, xpos+x, ypos);
  
  ypos += y;
  quad(xpos, ypos, xpos, ypos-15, xpos+x, ypos-15, xpos+x, ypos);
  
  
  ypos += y; 
  xpos += 3;
  x -= 6;
  quad(xpos, ypos, xpos-3, ypos-15, xpos+3+x, ypos-15, xpos+x, ypos);
  
  
  ypos += y; 
  xpos += 3;
  x -= 6;
  quad(xpos, ypos, xpos-3, ypos-15, xpos+3+x, ypos-15, xpos+x, ypos);
  
  
  ypos += y; 
  xpos += 5;
  x -= 5;
  quad(xpos, ypos, xpos-5, ypos-15, xpos+x, ypos-15, xpos+x-5, ypos);
  
  ypos += y; 
  xpos += 6;
  x -= 11;
  quad(xpos, ypos, xpos-6, ypos-15, xpos+x, ypos-15, xpos+x-6, ypos);
  
  //xpos -= 1;
  x -= 6;
  triangle(xpos, ypos, xpos+(0.5*x), ypos+30, xpos+x, ypos);
  
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
