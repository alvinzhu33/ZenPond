import java.util.*;

void setup(){
  size(900,675);
  makePond();
  FishObject f1 = new FishObject(0.5, 200, 200);
  f1.draw();
  FishObject f2 = new FishObject(0.7,170,570);
  f2.draw();
  FishObject f3 = new FishObject(1,800,200);
  f3.draw();
  lillypad();
  flowers(170,570,60);
  flowers(800,200,50);
  flowers(720,100,30);
}