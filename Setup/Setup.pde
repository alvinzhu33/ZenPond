import java.util.*;

void setup(){
  size(900,675);
  makePond();
  FishObject f1 = new FishObject(0.5, 200, 200);
  f1.drawFish();
  lillypad();
  flowers(170,570,60);
  flowers(800,200,50);
  flowers(720,100,30);
}