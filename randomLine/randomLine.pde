float direction = 1;
PVector speed = new PVector(0,1);
float pointX = 200;
float pointY = 200;
float change;
int m = minute();
  int h = hour(); 
void setup(){
  size(1280,1024);
  background(256,256,256);
}

void draw(){
  stroke(0,0,0);
  change = round(random(1,10));
  if(change ==10){
  direction = round(random(0,8));  
  point(pointX,pointY);
  point(pointX+1,pointY+1);
  point(pointX-1,pointY-1);
  point(pointX-1,pointY+1);
  point(pointX+1,pointY-1);
  stroke(200,200,200);
  point(pointX+1,pointY);
  point(pointX-1,pointY);
  point(pointX,pointY+1);
  point(pointX,pointY-1);
  stroke(0,0,0);
  }
   if(direction == 1){
   speed.set(0,-1,0);
   }
   if(direction == 2){
   speed.set(1,0,0); 
   }
   if(direction == 3){
  speed.set(0,1,0); 
   }
   if(direction == 4){
  speed.set(-1,0,0); 
   }
   if(direction == 5){
   speed.set(-1,-1,0);
   }
   if(direction == 6){
   speed.set(1,1,0); 
   }
   if(direction == 7){
  speed.set(-1,1,0); 
   }
   if(direction == 8){
  speed.set(1,-1,0); 
   }
   if(pointX == width){
  pointX = 1; 
   }
   if(pointX == 0){
  pointX = width-1; 
   }
   if(pointY == height){
  pointY = 1; 
   }
   if(pointY == 0){
  pointY = height-1;
   } 
   pointX = pointX+speed.x;
   pointY = pointY+speed.y;
   point(pointX, pointY);
}
void mousePressed() {
  m = minute();
  h = hour(); 
  if(m>5){
    String fileName = minute()+hour()+day()+month()+".png";
    save(fileName);
    print("written");
  }else{
   if(h>1){
    String fileName = minute()+hour()+day()+month()+".png";
    save(fileName);
    print("written");
   } 
  }
  exit();
}
void keyPressed() {
  if (key == '1') {
    direction = 1;
  }
  if (key == '2') {
    direction = 2;
  }
  if (key == '3') {
    direction = 3;
  }
  if (key == '4') {
    direction = 4;
  }
}
