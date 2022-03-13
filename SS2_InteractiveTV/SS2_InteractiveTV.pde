//Priya Begum, Interactive TV
//the color of the screen will change everytime you refresh and click the screen
int remotebutton = 5; 
float r = random(1, 500);
float g = random(1, 500);
float b = random(1, 500);

void setup() {
  size(1000,900);
  
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
  
}

void mousePressed() {
  fill(0, 50, 300);
  rect(500,350,525,325);
  
  if(mousePressed); {
    fill(r, g, b);
    quad(500, 200, 244, 350, 500, 502, 750, 354);
  }
  //channel
   
}
