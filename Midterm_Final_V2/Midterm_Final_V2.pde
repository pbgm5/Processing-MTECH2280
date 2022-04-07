//Priya Begum, Interactive TV
//the color of the screen will change everytime you refresh and click the screen
//When you press and hold key "1' and an error will show up 
//When you press key '2' and '3' two differnt types of patterns will appear
//press 4 for idle mode 
//press 5 to turn tv off
//added timer on turn off mode, adjusted idle screen so all shapes hitting screen will trigger color change instead of just the circle and interface instructions
//credit Demo 5 of MTECH 2280 Github 
//adding channel 6 video
import processing.video.*;
Movie myMovie;
int remotebutton = 5; 
float r = (50);
float g = (50);
float b = (50);
float s = (50);
float c = (50);
float e = (50);
int endline = (325);
int len = 20;
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
int x = 50;
int y = 80;
int spacing = 10;
PImage img;
PImage img2;
PFont font;
int mill = 0;
int timer = 5000;
int channelposition = 0;
float xMove= random (-5, 5);
float yMove= random (-5, 5);
float xMove2= random (-5, 5);
float yMove2= random (-5, 5);
float xMove3= random (-5, 5);
float yMove3= random (-5, 5);
float a = random(255);
float f = random(255);
float d = random(255);
float t = random(255);
float u = random(255);
float v = random(255);
float w = random(255);
float o = random(255);
float z = random(255);
String[] channels = {"Channel 1", "Channel 2", "Channel 3", "Channel 4", "Channel 5", "Channel 6","Channel 7","Channel 8","Channel 9","Channel 10","Channel 11","Channel 12","Channel 13","Channel 14","Channel 15","Channel 16","Channel 17","Channel 18","Channel 19","Channel 20","Channel 21","Channel 22","Channel 23","Channel 24","Channel 25"};

void setup() {
  size(1000,900);
  myMovie = new Movie(this, "e540ef6f9ddeb58a46bb27b2f641ef6c.mp4");
  img2 = loadImage("20210228_180307.jpg");
  img = loadImage("tverror.jpg");
  font = createFont("Cinzel-Bold.ttf" , 32);
  textFont(font);


}

void draw() {
  background(80);
  remote();
  tv();
  instruction();

  //println(mill);
  
  //Initial screen
  fill(s, c, e);
  rect(500,350,525,325);
  //gray rhombus
  fill(r, g, b);
  quad(500, 200, 244, 350, 500, 502, 750, 354);
    
    //displays randomized channel numbers
    if (channelposition == 1){ 
    fill(0);
    textSize(60);
    text("Channel", 325, 375);
    text(channelposition, 630, 375);
    } else if (channelposition == 2){
    fill(0);
    textSize(60);
    text("Channel", 325, 375);
    text(channelposition, 630, 375);
    } else if (channelposition == 3){
    fill(0);
    textSize(60);
    text("Channel", 325, 375);
    text(channelposition, 630, 375);
    } else if (channelposition == 4){
    fill(0);
    textSize(60);
    text("Channel", 325, 375);
    text(channelposition, 630, 375);
    } else if (channelposition == 5){
    fill(0);
    textSize(60);
    text("Channel", 325, 375);
    text(channelposition, 630, 375);
    } else if (channelposition == 6){
    fill(0);
    textSize(60);
    text("Channel", 325, 375);
    text(channelposition, 630, 375);
    } else if (channelposition == 7){
    fill(0);
    textSize(60);
    text("Channel", 325, 375);
    text(channelposition, 630, 375);
    } else if (channelposition == 8){
    fill(0);
    textSize(60);
    text("Channel", 325, 375);
    text(channelposition, 630, 375);
    } else if (channelposition == 9){
    fill(0);
    textSize(60);
    text("Channel", 325, 375);
    text(channelposition, 630, 375);
    } else if (channelposition == 10){
    fill(0);
    textSize(60);
    text("Channel", 325, 375);
    text(channelposition, 630, 375);
    } else if (channelposition == 11){
    fill(0);
    textSize(60);
    text("Channel", 325, 375);
    text(channelposition, 630, 375);
    } else if (channelposition == 12){
    fill(0);
    textSize(60);
    text("Channel", 325, 375);
    text(channelposition, 630, 375);
    } else if (channelposition == 13){
    fill(0);
    textSize(60);
    text("Channel", 325, 375);
    text(channelposition, 630, 375);
    } else if (channelposition == 14){
    fill(0);
    textSize(60);
    text("Channel", 325, 375);
    text(channelposition, 630, 375);
    } else if (channelposition == 15){
    fill(0);
    textSize(60);
    text("Channel", 325, 375);
    text(channelposition, 630, 375);
    } else if (channelposition == 16){
    fill(0);
    textSize(60);
    text("Channel", 325, 375);
    text(channelposition, 630, 375);
    } else if (channelposition == 17){
    fill(0);
    textSize(60);
    text("Channel", 325, 375);
    text(channelposition, 630, 375);
    } else if (channelposition == 18){
    fill(0);
    textSize(60);
    text("Channel", 325, 375);
    text(channelposition, 630, 375);
    } else if (channelposition == 19){
    fill(0);
    textSize(60);
    text("Channel", 325, 375);
    text(channelposition, 630, 375);
    } else if (channelposition == 20){
    fill(0);
    textSize(60);
    text("Channel", 325, 375);
    text(channelposition, 630, 375);
    } else if (channelposition == 21){
    fill(0);
    textSize(60);
    text("Channel", 325, 375);
    text(channelposition, 630, 375);
    } else if (channelposition == 22){
    fill(0);
    textSize(60);
    text("Channel", 325, 375);
    text(channelposition, 630, 375);
    } else if (channelposition == 23){
    fill(0);
    textSize(60);
    text("Channel", 325, 375);
    text(channelposition, 630, 375);
    } else if (channelposition == 24){
    fill(0);
    textSize(60);
    text("Channel", 325, 375);
    text(channelposition, 630, 375);
    } else if (channelposition == 25){
    fill(0);
    textSize(60);
    text("Channel", 325, 375);
    text(channelposition, 630, 375);
    } else  if (channelposition == 0){
        
    } 

    if (keyPressed)
    {
    if (key == '1'){
    image(img, 238, 188, 525, 325);
    image(img2, 410, 650, 200, 200);
    
    fill(0);
    textSize(60);
    text("Error", 400, 420);
    }
    
    }else if (key == '2'){
    //line pattern 
    fill(255);
    rect(500,350,525,325);
    for(int y = 190; y < 520; y += 10) {
    stroke(0);
    strokeWeight(3);
    line(235, y, 763, y);
    }
    
    } else if (key == '3'){
    //ellipse pattern
    fill(255);
    rect(500,350,525,325);
    for(int x = 0; x < 355; x += 40) {
    stroke(0);
    strokeWeight(5);
    noFill();
    ellipseMode(CENTER);
    ellipse(500, 350, x, x);
    }
    
    } else if (key == '4'){
    //idle screen
    fill(50);
    strokeWeight(3);
    rect(500,350,525,325);
    fill(a, d, f);
    ellipse (ex, ey, 70, 70);
    fill(t, u, v);
    rect (ex2, ey2, 70, 70);
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
      if (ex > 720 || ex < 250) { 
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
      if (ey > 500 || ey < 200) {
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
      if (ex2 > 730 || ex2 < 270) { 
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
      if (ey2> 480 || ey2 < 220) {
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
      
      } else if (key == '5'){
        //off screen
        mill = 0;
        mill = millis();
        if (mill <= timer)
        {
          fill(255);
          rect(500,350,525,325);
          fill(0);
          textSize(200);
          text("1",455, 425);
          }else if (mill <= timer+1000) {
          fill(255);
          rect(500,350,525,325);
          fill(0);
          textSize(200);
          text("2",450, 420);
          } else if ( mill <= timer+2000) {
          fill(255);
          rect(500,350,525,325);
          fill(0);
          textSize(200);
          text("3",450, 420);
          } else if ( mill <= timer+3000) {
          fill(255);
          rect(500,350,525,325);
          fill(0);
          textSize(200);
          text("4",450, 420);
          } else if ( mill <= timer+4000) {
          fill(255);
          rect(500,350,525,325);
          fill(0);
          textSize(200);
          text("5",450, 420);
          } else if (mill > 9000) {
          mill = 0; 
          fill(50);
          rect(500,350,525,325);
          }
          } else if (key == '6'){
            myMovie.loop();
            if (myMovie.available()) {
    myMovie.read();
  }

  image(myMovie, 237,187,530,325);
         // }else if (key != '6') {
        //    myMovie.stop();
  
    }
    }
  
void remote() {
    fill(#041F86);
    rect(mouseX,mouseY, 150, 300);
    fill(500, 0, 0);
    ellipse(mouseX-40, mouseY-110, 40, 40);
    fill(0);
    textSize(13);
    text("On/", mouseX-55, mouseY-110);
    fill(40);
    text("Off", mouseX-55, mouseY-100);
    fill(40);
    rect(mouseX-35,mouseY-15, 50, 20, remotebutton);
    fill(255);
    textSize(15);
    text("3",mouseX-35,mouseY-10);
    fill(40);
    rect(mouseX-35,mouseY+20, 50, 20, remotebutton);
    fill(255);
    textSize(15);
    text("5",mouseX-35,mouseY+25);
    fill(40);
    rect(mouseX-35,mouseY-55, 50, 20, remotebutton);
    fill(255);
    textSize(15);
    text("1",mouseX-35,mouseY-50);
    fill(40);
    rect(mouseX+30,mouseY-15, 50, 20, remotebutton);
    fill(255);
    textSize(15);
    text("4", mouseX+25,mouseY-10);
    fill(40);
    rect(mouseX+30,mouseY+20, 50, 20, remotebutton);
    fill(255);
    textSize(15);
    text("6",mouseX+25,mouseY+25);
    fill(40);
    rect(mouseX+30,mouseY-55, 50, 20, remotebutton);
    fill(255);
    textSize(15);
    text("2",mouseX+25,mouseY-50);
  }
  
void tv() {
  rectMode(CENTER);
  fill(30);
  rect(500,570,100,100, 28);
  rect(500,610, 250, 30, 10);
  fill(30);
  rect(500,350,600,400, 28);
  fill(50);
  rect(500,350,525,325);
  }
  
void instruction() {
    fill(0);
    textSize(30);
    text("Click to change channels", 10, 30);
    text("Press and hold key '1' for an error screen", 10, 65);
    text("Press key '2' or '3' for pattern or press '4' for idle screen", 10, 105);
    text("Press key 5 to turn off tv", 10, 145);
    text("Press key 6 for a suprise", 300, 700);
    
    
}
  
void mousePressed() {    
  //changes channel position every click and displays channel in console  
  channelposition = int(random(25));
  println(channels[channelposition]);
    
   s= random(225);
   c= random(225);
   e= random(225);

  //random channel colors
  strokeWeight(2);
  fill(0, 50, 300);
  rect(500,350,525,325);
  
   r= random(225);
   g= random(225);
   b= random(225);
   fill(r, g, b);
   quad(500, 200, 244, 350, 500, 502, 750, 354);
  
}
