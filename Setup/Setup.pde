import ddf.minim.*;
import java.util.*;

PImage bg;
Minim minim;
AudioPlayer tracks;

PFont standard;
PFont logo;
boolean play = false;
boolean music = false;

int initialTime;

FishObject[] fishes;
int numFishes;
Lilypad[] lillies = new Lilypad[3];
Flower[] flowers = new Flower[3];

void setup(){
  size(900,675);
  bg = loadImage("bg.jpg");
  background(bg);
  
  minim = new Minim(this);
  tracks = minim.loadFile("Track1.mp3");
  tracks.setGain(-40.0);
  
  frameRate(65);
  
  standard = createFont("Century Gothic",32,false);
  logo = createFont("Papyrus",100,false);
  
  lillies[0] = new Lilypad(110,570,150,65);
  lillies[1] = new Lilypad(800,170,120,175);
  lillies[2] = new Lilypad(680,70,90,182);
  
  flowers[0] = new Flower(170,570,60); 
  flowers[1] = new Flower(800,200,50);
  flowers[2] = new Flower(700,80,30); 
  
  numFishes=(int)(Math.random()*10)+5;
  fishes = new FishObject[numFishes];
  for(int i=0; i<numFishes; i++){
    int fishType = (int)(Math.random()*3);
    if(fishType == 0){
      fishes[i] = new GoldFish((int)(Math.random()*900), (int)(Math.random()*675), (int)(Math.random()*20)+40);
    }
    if(fishType == 1){
      fishes[i] = new Koi((int)(Math.random()*900), (int)(Math.random()*675), (int)(Math.random()*20)+40);
    }
    if(fishType == 2){
      fishes[i] = new CatFish((int)(Math.random()*900), (int)(Math.random()*675), (int)(Math.random()*20)+40);
    }
  }
  
  welcome();
}

void draw(){
  if(play){
    background(bg);
  
    for(int i=0; i<numFishes; i++){
      fishes[i].move();
    }
    
    for(int i=0; i<3; i++){
      lillies[i].drawLilypad();
      flowers[i].drawFlower();
    }
  
    fill(0);
    textFont(standard, 40);
    text((millis()/1000) - initialTime + " sec", width/2, 60);
    
    resetButton();
    musicButton();
  }
}

void welcome(){
  for(int i=0; i<3; i++){
      lillies[i].drawLilypad();
      flowers[i].drawFlower();
  }
  
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
  if(music){
    fill(120, 243, 149);
  }else{
    fill(243, 149, 120);
  }
  rect(10, 10, 50, 50, 10, 10, 10, 10);
  fill(0);
  triangle(27, 20, 27, 40, 47, 30);
  textFont(standard, 16);
  text("Music", 35, 55);
}

void musicControl(){
  if(! play){
    tracks.loop();
    music = true;
  }
  else{
    if(music){
      tracks.mute();
      music = false;
    }
    else{
      tracks.unmute();
      music = true;
    }
  }
}

void mousePressed(){
  if(! play){
    if(mouseX >= 385 && mouseX <= 515 &&
    mouseY >= 520 && mouseY <= 600){
      musicControl();
      play = true;
      initialTime=(millis()/1000);
    }
  }else{
    if(mouseX >= 840 && mouseX <= 890 &&
      mouseY >= 10 && mouseY <= 60){
        music = true;
        musicControl();
        play=false;
        setup();
      }
    if(mouseX >=10 && mouseX <= 60 &&
      mouseY >=10 && mouseY <= 60){
        musicControl();
      }
  }
}