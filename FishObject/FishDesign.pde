float xpos = 100;
float ypos = 50;
float scale = 1; //3 is default
float x = 70; //create fixed proportions for size
float y = 15;
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
  quad(xpos, ypos, xpos+5, ypos-15, xpos+65, ypos-15, xpos+70, ypos);
  
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
  xpos += 0.58*x;
  ypos += 22;
  beginShape();
    vertex(xpos, ypos);
    bezierVertex(xpos-(2*scale*3), ypos+(5*scale*3), xpos+(3*scale*3), ypos+(6*scale*3), xpos+(7*scale*3), ypos+(11*scale*3));
    bezierVertex(xpos+(10*scale*3), ypos+(15*scale*3), xpos+(14*scale*3), ypos+(21*scale*3), xpos+(7*scale*3), ypos+(29*scale*3));
    bezierVertex(xpos+(9*scale*3), ypos+(26*scale*3), xpos+(7*scale*3), ypos+(22*scale*3), xpos+(3*scale*3), ypos+(19*scale*3));
    bezierVertex(xpos-(1*scale*3), ypos+(15*scale*3), xpos-(5*scale*3), ypos+(8*scale*3), xpos-(2*scale*3), ypos+(3*scale*3));
    
  endShape();


  //move();
  //display();
}
