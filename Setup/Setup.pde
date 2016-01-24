import java.util.*;
PImage bg;

PFont standard;
PFont logo;
boolean play = false;

int initialTime;

GoldFish s1;
Koi s2;
Lilypad lp1;
Lilypad lp2;
Lilypad lp3;
Flower fl1;
Flower fl2;
Flower fl3;

void setup(){
  size(900,675);
  bg = loadImage("bg.jpg");
  frameRate(35);
  standard = createFont("Century Gothic",32,false);
  logo = createFont("Papyrus",100,false);
  
  lp1 = new Lilypad(110,570,150);
  lp2 = new Lilypad(800,170,120);
  lp3 = new Lilypad(680,70,90);
  
  
  fl1 = new Flower(170,570,60); 
  fl2 = new Flower(800,200,50);
  fl3 = new Flower(700,80,30); 
  
  s1 = new GoldFish(500, 500, (int)(Math.random()*20)+40);
  s2 = new Koi(300,300,(int)(Math.random()*20)+40);
  
  welcome();
}

void draw(){
  if(play){
    background(bg);
  
    s1.move();
    s2.move();
  
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
    textFont(standard, 40);
    text((millis()/1000) - initialTime + " sec", width/2, 60);
  }
}

void welcome(){
  background(bg);
    
  lp1.drawLilypad(65);
  lp2.drawLilypad(175);
  lp3.drawLilypad(182);
  
  fl1.drawFlower();
  fl2.drawFlower();
  fl3.drawFlower();
  
  noStroke();
  fill(235,235,235,230);
  rect(75, 50, 750, 575, 100, 100, 100, 100);
  
  fill(100);
  textFont(standard);
  textAlign(CENTER);
  text("Welcome to", width/2, 150);
  
  fill(229, 159, 210);
  textFont(logo);
  text("ZenPond",width/2, 300);
  
  fill(100);
  textFont(standard);
  text("Here is a beautiful pond full of fishes.", width/2, 400);
  text("They grow, they swim, and they never leave.", width/2, 450);
  text("So sit back, relax, and watch them live their life", width/2, 500);
  
  playButton();
}

void playButton(){
  fill(112,198,138);
  rect(385, 520, 130, 80, 10, 10, 10, 10);
  fill(222, 89, 106);
  textFont(logo, 40);
  text("Play", width/2, 570);
}

void mousePressed(){
  if(! play && mouseX >= 385 && mouseX <= 515 &&
    mouseY >= 520 && mouseY <= 600){
      play = true;
      initialTime=(millis()/1000);
  }
}