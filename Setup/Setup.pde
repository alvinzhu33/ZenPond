import java.util.*;
PImage bg;

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
  background(bg);
  noStroke();
  
  f1 = new FishObject(0.5, 300, 400);
  f2 = new FishObject(0.7, 500, 200);
  
  lp1 = new Lilypad(110,570,150);
  lp2 = new Lilypad(800,170,120);
  lp3 = new Lilypad(680,70,90);
  
  fl1 = new Flower(170,570,60); 
  fl2 = new Flower(800,200,50);
  fl3 = new Flower(700,80,30); 
  
  f1.drawFish();
  f2.drawFish();
  
  lp1.drawLilypad();
  lp2.drawLilypad();
  lp3.drawLilypad();
  
  fl1.drawFlower();
  fl2.drawFlower();
  fl3.drawFlower();
}

void draw(){
  float x = f1.xpos;
  while(x<900){
    fill(25);
    f1.fish1(20);
  }
}