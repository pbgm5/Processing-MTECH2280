import processing.serial.*;
Serial myPort;
int val=0;
float a = random(255);
float f = random(255);
float d = random(255);
float t = random(255);
float u = random(255);
float v = random(255);
float w = random(255);
float o = random(255);
float z = random(255);
float h = 70;
float wi = 70;
float ex = 500;
float ey = 350;
float ex2 = 500; //second rectangle channel 4
float ey2 = 350;  //triangle channel 4
float ex3 = 300;
float ey3 = 450;
float ex4 = 400;
float ey4 = 450;
float ex5 = 350;
float ey5 = 370;
float xMove= random (-5, 5);
float yMove= random (-5, 5);
float xMove2= random (-5, 5);
float yMove2= random (-5, 5);
float xMove3= random (-5, 5);
float yMove3= random (-5, 5);

void setup() {
  size(1000,1000);
  printArray(Serial.list()); 
  String portName = Serial.list()[0]; 
  myPort = new Serial(this, portName, 9600);

}
void draw() {
  background(80);
  
  if (myPort.available() > 0 && val < 255){
      val = myPort.read();
     println(val);
     h = 70;
     wi = 70;
  }
    
    //idle screen
    strokeWeight(3);
    fill(a, d, f);
    ellipse (ex, ey, wi, h);
    fill(t, u, v);
    rect (ex2, ey2, wi, h);
    fill(w, o, z);
    triangle(ex3, ey3, ex4, ey4, ex5, ey5);
      
      //increment the x, y location
      ex= ex + xMove;  
      ey= ey + yMove;
      
      ex2= ex2 + xMove2;  
      ey2= ey2 + yMove2;
      
      ex3= ex3 + xMove3;  
      ey3= ey3 + yMove3;
      
      ex4= ex4 + xMove3;  
      ey4= ey4 + yMove3;
      
      ex5= ex5 + xMove3;  
      ey5= ey5 + yMove3;

      //if x or y go beyond bounds of canvas, flip direction
      
        
      if (ex > 1000 || ex < 0) { 
      xMove= -xMove;
      a= random(225);
      d= random(225);
      f= random(225);
      w= random(225);
      o= random(225);
      z= random(225);
      t= random(225);
      u= random(225);
      v= random(225);
      }
      if (ey > 1000 || ey < 0) {
      yMove = -yMove;
      a= random(225);
      d= random(225);
      f= random(225);
      w= random(225);
      o= random(225);
      z= random(225);
      t= random(225);
      u= random(225);
      v= random(225);
      }
      if (ex2 > 1000 || ex2 < 0) { 
      xMove2= -xMove2;
      t= random(225);
      u= random(225);
      v= random(225);
      w= random(225);
      o= random(225);
      z= random(225);
      t= random(225);
      u= random(225);
      v= random(225);
       }
      if (ey2> 1000 || ey2 < 0) {
      yMove2 = -yMove2;
      t= random(225);
      u= random(225);
      v= random(225);
      w= random(225);
      o= random(225);
      z= random(225);
      t= random(225);
      u= random(225);
      v= random(225);
      }
      if (ex3 > 730 || ex3 < 250) { 
      xMove3= -xMove3;
      w= random(225);
      o= random(225);
      z= random(225);
       }
      if (ey3 > 760 || ey3 < 200) {
      yMove3 = -yMove3;
      }
      if (ex4 > 760 || ex4 < 250) { 
      xMove3= -xMove3;
       }
      if (ey4 > 520 || ey4 < 200) {
      yMove3 = -yMove3;
      }
      if (ex5 > 760 || ex5 < 250) { 
      xMove3= -xMove3;
       }
      if (ey5 > 520 || ey5 < 200) {
      yMove3 = -yMove3;
      }
      
      else if (myPort.available() > 0 && val == 255){
        val = myPort.read();
         
        wi = 30;
        h = 30; 
      }
      
}
