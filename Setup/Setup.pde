import ddf.minim.*;
import java.util.*;

PImage bg;
Minim minim;
AudioPlayer[] tracks = new AudioPlayer[1];

PFont standard;
PFont logo;
boolean play = false;
boolean music = false;

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
  background(bg);
  
  minim = new Minim(this);
  tracks[0] = minim.loadFile("Track1.mp3");
  
  frameRate(35);
  
  standard = createFont("Century Gothic",32,false);
  logo = createFont("Papyrus",100,false);
  
  lp1 = new Lilypad(110,570,150);
  lp2 = new Lilypad(800,170,120);
  lp3 = new Lilypad(680,70,90);
  
  
  fl1 = new Flower(170,570,60); 
  fl2 = new Flower(800,200,50);
  fl3 = new Flower(700,80,30); 
  
  s1 = new GoldFish((int)(Math.random()*900), (int)(Math.random()*675), (int)(Math.random()*20)+40);
  s2 = new Koi((int)(Math.random()*900), (int)(Math.random()*675), (int)(Math.random()*20)+40);
  
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
    
    resetButton();
    musicButton();
  }
}

void welcome(){
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

void resetButton(){
  fill(177, 104, 213, 180);
  rect(840,10,50,50,10,10,10,10);
  resetSymbol();
  fill(0);
  textFont(standard, 16);
  text("Reset",865,55);
}

void resetSymbol(){
  int degrees = 0;
  noStroke();
  fill(0);
  while(degrees<360){
    pushMatrix();
    translate(865,27);
    rotate(radians(degrees));
    rect(-1.5,5,3,7,10,10,10,10);
    popMatrix();
    degrees+=60;
  }
}

void musicButton(){
  fill(255);
  rect(10, 10, 50, 50, 10, 10, 10, 10);
  fill(0);
  textFont(standard, 16);
  text("Music", 35, 55);
}

void musicControl(){
  if(music){
    tracks[0].rewind();
    tracks[0].pause();
    music = false;
  }
  else{
    tracks[0].play();
    music = true;
  }
}

void mousePressed(){
  if(! play){
    if(mouseX >= 385 && mouseX <= 515 &&
    mouseY >= 520 && mouseY <= 600){
      play = true;
      initialTime=(millis()/1000);
      musicControl();
    }
  }else{
    if(mouseX >= 840 && mouseX <= 890 &&
      mouseY >= 10 && mouseY <= 60){
        play=false;
        setup();
      }
    if(mouseX >=10 && mouseX <= 60 &&
      mouseY >=10 && mouseY <= 60){
        musicControl();
      }
  }
}