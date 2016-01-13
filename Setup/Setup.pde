import java.util.*;

void setup(){
  size(900,675);
  makePond();
  
  FishObject f1 = new FishObject(0.5, 200, 200);
  //FishObject f2 = new FishObject(0.5, 500, 200);
  
  Lilypad lp1 = new Lilypad(110,570,150);
  Lilypad lp2 = new Lilypad(800,170,120);
  Lilypad lp3 = new Lilypad(680,70,90);
  
  Flower fl1 = new Flower(170,570,60); 
  Flower fl2 = new Flower(800,200,50);
  Flower fl3 = new Flower(700,80,30); 
  
  f1.drawFish();
  //f2.drawFish();
  
  lp1.drawLilypad();
  lp2.drawLilypad();
  lp3.drawLilypad();
  
  fl1.drawFlower();
  fl2.drawFlower();
  fl3.drawFlower();
}