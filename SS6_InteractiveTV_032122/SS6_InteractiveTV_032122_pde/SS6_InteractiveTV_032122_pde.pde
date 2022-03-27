//Priya Begum, Interactive TV
//the color of the screen will change everytime you refresh and click the screen
//When you press and hold key "1' and an error will show up 
//When you press key '2' and '3' two differnt types of patterns will appear

int remotebutton = 5; 
float r = (50);
float g = (50);
float b = (50);
float s = (50);
float c = (50);
float e = (50);
int endline = (325);
int len = 20;
int ex = 270;
int ey = 220;
int x = 50;
int y = 80;
int spacing = 10;
PImage img;
PImage img2;
PFont font;
int mill = 0;
int channelposition = 0;

String[] channels = {"Channel 1", "Channel 2", "Channel 3", "Channel 4", "Channel 5", "Channel 6","Channel 7","Channel 8","Channel 9","Channel 10","Channel 11","Channel 12","Channel 13","Channel 14","Channel 15","Channel 16","Channel 17","Channel 18","Channel 19","Channel 20","Channel 21","Channel 22","Channel 23","Channel 24","Channel 25"};

void setup() {
  size(1000,900);
  img2 = loadImage("20210228_180307.jpg");
  img = loadImage("tverror.jpg");
  font = createFont("Cinzel-Bold.ttf" , 32);
  textFont(font);

}

void draw() {
  mill = millis();
  background(70);
  remote();
  tv();
  instruction();
  
  
  //initial screen
  //gray background
  fill(s, c, e);
  rect(500,350,525,325);
  //gray rhombus
  fill(r, g, b);
  quad(500, 200, 244, 350, 500, 502, 750, 354);
    
    //displays randomized channels
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
      
      /* while (channelposition <= 25) {
        fill(0);
        textSize(60);
        text("Channel", 325, 375);
        text(channelposition, 630, 375);
        }  */
      
      
  
     if (keyPressed){
  if (key == '1'){
    image(img, 238, 188, 525, 325);
    image(img2, 410, 650, 200, 200);
    
    fill(0);
    textSize(60);
    text("Error", 400, 420);
  }
    
   } else if (key == '2'){
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
      fill(50);
      rect(500,350,525,325);
      fill(s, c, e);
      ellipse(ex, ey, 50, 50);
      
      for (int ex = 270; ex < 800; ex+=50) {
        ellipse(ex, ey, 50, 50);
      }
      for (int ey = 270; ey < 500; ey+=50) {
        ellipse(ex, ey, 50, 50);
      }
        
      
    
    if (mill == 5000) { //timer for inactivity 
      fill(50);
      rect(500,350,525,325);
    }
    }
  }
   


void remote() {
    fill(#041F86);
    rect(mouseX,mouseY, 150, 300);
    fill(500, 0, 0);
    ellipse(mouseX-40, mouseY-110, 40, 40);
    fill(40);
    rect(mouseX-35,mouseY-15, 50, 20, remotebutton);
    rect(mouseX-35,mouseY+20, 50, 20, remotebutton);
    rect(mouseX-35,mouseY-55, 50, 20, remotebutton);
    rect(mouseX+30,mouseY-15, 50, 20, remotebutton);
    rect(mouseX+30,mouseY+20, 50, 20, remotebutton);
    rect(mouseX+30,mouseY-55, 50, 20, remotebutton);
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
    text("Click to change channels", 10, 40);
    text("Press and hold key '1' for an error screen", 10, 80);
    text("Press key '2' or '3' for pattern screen", 10, 120);
    
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
