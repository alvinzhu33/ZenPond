float xpos = 100;
float ypos = 50;
float scale = 0.1; //1 is default
float x = 70; //variable used to help constuct sizes


void setup() {
  size(700,500);
  noLoop();
}

void draw() {
  background(255);
  noStroke();
  fill(255,128,0);
  

  quad(xpos, ypos, xpos+(12*scale), ypos-(15*scale), xpos+(48*scale), ypos-(15*scale), xpos+(60*scale), ypos);
  
  xpos -= (5*scale);
  ypos += (15*scale);
  quad(xpos, ypos, xpos+(5*scale), ypos-(15*scale), xpos+(65*scale), ypos-(15*scale), xpos+(70*scale), ypos);
  
  xpos -= (3*scale);
  ypos += (15*scale);
  x += 6;
  quad(xpos, ypos, xpos+(3*scale), ypos-(15*scale), xpos+((-3+x)*scale), ypos-(15*scale), xpos+(x*scale), ypos);
  
  ypos += (15*scale);
  quad(xpos, ypos, xpos, ypos-(15*scale), xpos+(x*scale), ypos-(15*scale), xpos+(x*scale), ypos);
  
  
  ypos += (15*scale); 
  xpos += (3*scale);
  x -= 6;
  quad(xpos, ypos, xpos-(3*scale), ypos-(15*scale), xpos+((3+x)*scale), ypos-(15*scale), xpos+(x*scale), ypos);
  
  
  ypos += (15*scale); 
  xpos += (3*scale);
  x -= 6;
  quad(xpos, ypos, xpos-(3*scale), ypos-(15*scale), xpos+((3+x)*scale), ypos-(15*scale), xpos+(x*scale), ypos);
  
  
  ypos += (15*scale); 
  xpos += (5*scale);
  x -= 5;
  quad(xpos, ypos, xpos-(5*scale), ypos-(15*scale), xpos+(x*scale), ypos-(15*scale), xpos+((x-5)*scale), ypos);
  
  ypos += (15*scale); 
  xpos += (6*scale);
  x -= 11;
  quad(xpos, ypos, xpos-(6*scale), ypos-(15*scale), xpos+(x*scale), ypos-(15*scale), xpos+((x-6)*scale), ypos);
  
  x -= 6;
  triangle(xpos, ypos, xpos+((0.5*x)*scale), ypos+(30*scale), xpos+(x*scale), ypos);
  
  //tail
  xpos += ((0.57*x)*scale);
  ypos += (20*scale);
  beginShape();
    vertex(xpos, ypos);
    bezierVertex(xpos-(2*scale*3), ypos+(5*scale*3), xpos+(3*scale*3), ypos+(6*scale*3), xpos+(7*scale*3), ypos+(11*scale*3));
    bezierVertex(xpos+(10*scale*3), ypos+(15*scale*3), xpos+(14*scale*3), ypos+(21*scale*3), xpos+(7*scale*3), ypos+(29*scale*3));
    bezierVertex(xpos+(9*scale*3), ypos+(26*scale*3), xpos+(7*scale*3), ypos+(22*scale*3), xpos+(3*scale*3), ypos+(19*scale*3));
    bezierVertex(xpos-(1*scale*3), ypos+(15*scale*3), xpos-(5*scale*3), ypos+(8*scale*3), xpos-(2*scale*3), ypos+(3*scale*3));  
  endShape();

}