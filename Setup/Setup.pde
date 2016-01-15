import java.util.*;
PImage bg;

PFont f;

/*float dt = .1;
float forward = 0.1;*/

Skeleton s1;
Lilypad lp1;
Lilypad lp2;
Lilypad lp3;
Flower fl1;
Flower fl2;
Flower fl3;

void setup(){
  size(900,675);
  bg = loadImage("bg.jpg");
  frameRate(34);
  f = createFont("Arial",32,false);
  
  noStroke();
  //16 and 40 are the default sizes
  s1 = new Skeleton(100, 100, 5);
  
  lp1 = new Lilypad(110,570,150);
  lp2 = new Lilypad(800,170,120);
  lp3 = new Lilypad(680,70,90);
  
  
  fl1 = new Flower(170,570,60); 
  fl2 = new Flower(800,200,50);
  fl3 = new Flower(700,80,30); 
  
  

}

void draw(){
  background(bg);
  
  s1.bones();
  /*f1.drawFish();
  f1.t += dt;
  f1.ypos = 20;
  forward+= -0.2;  
  f1.ypos += forward;*/

  
  lp1.drawLilypad(65);
  lp2.drawLilypad(175);
  lp3.drawLilypad(182);
  
  
  fl1.drawFlower();
  fl2.drawFlower();
  fl3.drawFlower();
  
  fl1.size = 60;
  fl2.size = 50;
  fl3.size = 30;
  
  fill(0);
  textFont(f);
  textAlign(CENTER);
  text((millis()/1000) + " sec", width/2, 60);
}