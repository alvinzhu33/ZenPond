import java.util.*;
PImage bg;

PFont f;

Skeleton s1;
Lilypad lp1;
Lilypad lp2;
Lilypad lp3;
Flower fl1;
Flower fl2;
Flower fl3;

float fishy=0;
String upordown = "up";

void setup(){
  size(900,675);
  bg = loadImage("bg.jpg");
  frameRate(64);
  f = createFont("Arial",32,false);
  
  s1 = new Skeleton(500, 100, 100);
  
  lp1 = new Lilypad(110,570,150);
  lp2 = new Lilypad(800,170,120);
  lp3 = new Lilypad(680,70,90);
  
  
  fl1 = new Flower(170,570,60); 
  fl2 = new Flower(800,200,50);
  fl3 = new Flower(700,80,30); 
}

void draw(){
  background(bg);
  
  s1.move(0,fishy); //straight up
  //s1.turn(3*PI/2);
  //s1.turn(3*PI/2);
  s1.boundary(fishy);
  
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
  
  if(s1.up()){
    fishy--;
  }else{
    fishy++;
  }
}