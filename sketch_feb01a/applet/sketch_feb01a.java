import processing.core.*; 
import processing.xml.*; 

import java.applet.*; 
import java.awt.*; 
import java.awt.image.*; 
import java.awt.event.*; 
import java.io.*; 
import java.net.*; 
import java.text.*; 
import java.util.*; 
import java.util.zip.*; 
import java.util.regex.*; 

public class sketch_feb01a extends PApplet {

int backcolor = 50;
boolean fading = false;
public void setup(){
 size(1280,1024);
 background(50,50,50);
}
public void draw(){
  if(fading == true){
   backcolor--; 
  }else{
    backcolor++;
  }
  if(backcolor == 0){
    fading = false;
    backcolor =1;
  }
  if(backcolor == 256){
    fading = true;
    backcolor = 255;
  }
 background(backcolor,backcolor,backcolor);
 for(int x = 0;x<=160;x++){
  for(int y = 0;y<=128;y++){
   stroke(random(256),random(256),random(256));
   point(x*8,y*8);
   float randomNum = random(256);
   stroke(randomNum,randomNum,randomNum);
   point((x*8)+1,(y*8));
   point((x*8)+1,(y*8)+1);
   point((x*8),(y*8)+1);
   point((x*8)-1,(y*8)+1);
   point((x*8),(y*8)-1);
   point((x*8)+1,(y*8)-1);
   point((x*8)-1,(y*8));
   point((x*8)-1,(y*8)-1);
  } 
 }
}
public void mousePressed() {
  exit();
}

  static public void main(String args[]) {
    PApplet.main(new String[] { "--present", "--bgcolor=#666666", "--stop-color=#cccccc", "sketch_feb01a" });
  }
}
