//Priya Begum, Interactive TV
//the color of the screen will change everytime you refresh and click the screen
//When you press a key an error will show up 

int remotebutton = 5; 
float r = (50);
float g = (50);
float b = (50);
float s = (50);
float c = (50);
float e = (50);
int endline = (325);
int len = 20; 
int x = 50;
int y = 80;
int spacing = 10;
PImage img;
PFont font;

void setup() {
  size(1000,900);
  img = loadImage("tverror.jpg");
  font = createFont("Cinzel-Bold.ttf" , 32);
  textFont(font);
  
}

void draw() {
  background(70);
  //Tv
  rectMode(CENTER);
  fill(30);
  rect(500,570,100,100, 28);
  rect(500,610, 250, 30, 10);
  fill(30);
  rect(500,350,600,400, 28);
  fill(50);
  rect(500,350,525,325);
  
  //remote
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
  
  //gray background
  fill(s, c, e);
  rect(500,350,525,325);
  
  //gray rhombus
  fill(r, g, b);
    quad(500, 200, 244, 350, 500, 502, 750, 354);
  
  if (keyPressed) {
  /*  while (x <= endline) {
      fill(r, g, b);
      rect(x,y,x,y+len);
      x = x + spacing;
    */
    image(img, 238, 188, 525, 325);
    
    fill(0);
    textSize(60);
    text("Error", 400, 420);
  }
}

void mousePressed() {
   s= random(225);
   c= random(225);
   e= random(225);
  
  
  fill(0, 50, 300);
  rect(500,350,525,325);
  
   r= random(225);
   g= random(225);
   b= random(225);
   fill(r, g, b);
   quad(500, 200, 244, 350, 500, 502, 750, 354);
  
  /*if (keyPressed) {
    for (int y = 0; y < height; y += 10) {
    stroke(0);
    line(0, y, width, y);
    
  */ 
}
