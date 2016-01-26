import ddf.minim.*;
import java.util.*;

PImage bg;
Minim minim;
AudioPlayer[] tracks = new AudioPlayer[4];
AudioPlayer main;

PFont standard;
PFont logo;
boolean play = false;
boolean music = false;
ArrayList<Integer> food = new ArrayList<Integer>(); 

int initialTime;

FishObject[] fishes;
int numFishes;
Blossom[] blossoms = new Blossom[3];

void setup(){
  size(900,675);
  bg = loadImage("bg.jpg");
  background(bg);
  
  minim = new Minim(this);
  for(int i=0; i<4; i++){
    tracks[i]=minim.loadFile("Track"+(i+1)+".mp3");
    tracks[i].setGain(-40.0);
  }
  main = tracks[0];
  
  frameRate(65);
  
  standard = createFont("Century Gothic",32,false);
  logo = createFont("Papyrus",100,false);
  
  blossoms[0] = new Blossom("ver",110,150,60);
  blossoms[1] = new Blossom("ver",800,120,50);
  blossoms[2] = new Blossom("hor", 70, 80, 30);
  
  numFishes=(int)(Math.random()*5)+3;
  fishes = new FishObject[numFishes];
  for(int i=0; i<numFishes; i++){
    int fishType = (int)(Math.random()*3);
    if(fishType == 0){
      fishes[i] = new GoldFish((int)(Math.random()*900), (int)(Math.random()*675), (int)(Math.random()*20)+20);
    }
    if(fishType == 1){
      fishes[i] = new Koi((int)(Math.random()*900), (int)(Math.random()*675), (int)(Math.random()*20)+20);
    }
    if(fishType == 2){
      fishes[i] = new CatFish((int)(Math.random()*900), (int)(Math.random()*675), (int)(Math.random()*20)+20);
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
      blossoms[i].drawBlossom();
    }
  
    fill(0);
    textFont(standard, 40);
    text((millis()/1000) - initialTime + " sec", width/2, 60);
    
    musicButton();
    trackButton();
    resetButton();
  }
}

void welcome(){
  for(int i=0; i<3; i++){
      blossoms[i].drawBlossom();
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
    main.loop();
    music = true;
  }
  else{
    if(music){
      main.mute();
      music = false;
    }
    else{
      main.unmute();
      music = true;
    }
  }
}

void trackButton(){
  fill(86,199,162);
  rect(70,10,50,50,10,10,10,10);
  textFont(standard, 14);
  fill(0);
  text("Track",95,30);
  textFont(standard, 25);
  for(int i=0; i<4; i++){
    if(main==tracks[i]){
      text(i+1,95,55); 
    }
  }
}

void trackControl(){
  for(int i=0; i<4; i++){
    if(main==tracks[i]){
      main.pause();
      main.rewind();
      if(i==3){
        main=tracks[0];
      }
      else{
        main=tracks[i+1];
      }
      i=50;
    }
  }
  main.loop();
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
    if(mouseX >= 70 && mouseX <= 120 &&
      mouseY >=10 && mouseY <=60){
        trackControl();
      }
  }
}
void makeFood(){
  if (mousePressed){
      food.add(mouseX);
      food.add(mouseY); 
      //i need help here 
      //System.out.println(Arrays.toString(food));
      fill(122,112,39);
      triangle(mouseX, mouseY, mouseX+2, mouseY+5, mouseX+3, mouseY-4);
      triangle(mouseX+10, mouseY-10, mouseX+12.5, mouseY-12, mouseX+11, mouseY-8);
      triangle(mouseX+24, mouseY-10, mouseX+25, mouseY-8, mouseX+26.5, mouseY-12);
      triangle(mouseX+12, mouseY, mouseX+14.5, mouseY-2, mouseX+13, mouseY+2);
  }
}