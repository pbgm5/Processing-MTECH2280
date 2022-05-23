//Digital Bunny Pet Tamagatchi
//Priya Begum Final 
PImage img;
PImage[] eating = new PImage[3];
PImage[] sleeping = new PImage[3];
PImage[] bathing = new PImage[3];
int task = 1;
int timer = 3000;
int mills = 0;
int buttonState1 = 1;
int buttonState2 = 1;
int buttonState3 = 1;
import processing.serial.*;
Serial myPort;

void setup() {
  size(1000,900);
  img = loadImage("png-clipart-Cute-Anime-Chibi-Drawings_thumbnail.png");
  eating[0] = loadImage("Eatingbunny.png");
  eating[1] = loadImage("Eatingbunny2.png");
  eating[2] = loadImage("Eatingbunny3.png");
  bathing[0] = loadImage("bathebunny1.png");
  bathing[1] = loadImage("bathebunny1.png");
  bathing[2] = loadImage("bathebunny1.png");
  sleeping[0] = loadImage("sleepybunny.png");
  sleeping[1] = loadImage("sleepybunny.png");
  sleeping[2] = loadImage("sleepybunny.png");
  printArray(Serial.list()); 
  String portName = Serial.list()[0]; 
  myPort = new Serial(this, portName, 9600);
  }


void draw() {
  println(buttonState1);
  background(200, 255, 255);
  idlecharacter();
  mills = millis();
  
  if (mills >= timer) {
  
  if (task == 1)
  {
    idlecharacter();
    fill(0);
    textSize(60);
    text("Bunny wants to eat", 250, 650);
    
  }  else if (task == 2){
    idlecharacter();
     fill(0);
     textSize(60);
     text("Bunny wants to bathe", 250, 650);
  }  else if (task == 3){
    idlecharacter();
    fill(0);
    textSize(60);
    text("Bunny wants to sleep", 250, 650);
  }
  while (myPort.available() > 0 && task == 1){
      buttonState1 = myPort.read();
      if (buttonState1 == 0) {
      for (int i = 0; i < eating.length; i++) {
        image(eating[i], 300, 300);
      
    }
    task = 2;
    while (myPort.available() > 0 && task == 2){
      buttonState2 = myPort.read();
      if (buttonState2 == 0) {
      for (int i = 0; i < eating.length; i++) {
        image(eating[i], 300, 300);
      }
      task = 3;
      while (myPort.available() > 0 && task == 3){
      buttonState3 = myPort.read();
      if (buttonState3 == 0) {
      for (int i = 0; i < eating.length; i++) {
        image(eating[i], 300, 300);
        }
       }
      }
     }
    }
   }
  }
 }
}

 void idlecharacter()
  {
    image(img, 288, 188, 400, 400);
  }
