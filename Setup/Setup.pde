import java.util.*;
PImage bg;

float dt = .1;

FishObject f1;
FishObject f2;
Lilypad lp1;
Lilypad lp2;
Lilypad lp3;
Flower fl1;
Flower fl2;
Flower fl3;

void setup(){
  size(900,675);
  bg = loadImage("bg.jpg");
  //frameRate(4);
  noStroke();
  
  f1 = new FishObject(0.1, 10, 10);
 
  
  //f2 = new FishObject(0.7, 500, 200);
  
  lp1 = new Lilypad(110,570,150);
  lp2 = new Lilypad(800,170,120);
  lp3 = new Lilypad(680,70,90);
  
  
  fl1 = new Flower(170,570,60); 
  fl2 = new Flower(800,200,50);
  fl3 = new Flower(700,80,30); 
  
  

}

void draw(){
  background(bg);
  f1.drawFish();
  //f2.drawFish();
  f1.xpos = 10;
  f1.ypos = 10;
  f1.x = 70;
  f1.t += dt;

  
  lp1.drawLilypad(65);
  lp2.drawLilypad(175);
  lp3.drawLilypad(182);
  
  
  fl1.drawFlower();
  fl2.drawFlower();
  fl3.drawFlower();
  
  fl1.size = 60;
  fl2.size = 50;
  fl3.size = 30;
}