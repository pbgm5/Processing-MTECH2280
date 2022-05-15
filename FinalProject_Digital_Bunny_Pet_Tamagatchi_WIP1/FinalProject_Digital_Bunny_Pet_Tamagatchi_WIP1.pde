//Digital Bunny Pet Tamagatchi
//Priya Begum Final
//add-ons: loading screen at the beginning(pet in bed and getting out of bed after loading is finished), option to name pet 
PImage img;
float randomoption = 0;
int timer = 3000;
int mills = 0;
import processing.serial.*;
Serial myPort;

void setup() {
  size(1000,900);
  //font = createFont("Cinzel-Bold.ttf" , 32);
  //textFont(font);
  img = loadImage("png-clipart-Cute-Anime-Chibi-Drawings_thumbnail.png");
  
  printArray(Serial.list()); 
  String portName = Serial.list()[0]; 
  myPort = new Serial(this, portName, 9600);

}

void draw() {
  
  background(200, 255, 255);
  idlecharacter();
  println(randomoption);
  mills = millis();
  println(mills);
  
  if (mills >= timer) {
      randomoption = int(random(1,4));
  }
  
  if (randomoption == 1)
  {
    //LED 1 LIGHT
    myPort.write(1);
    randomoption = 1;
    fill(0);
    textSize(60);
    text("Bunny wants to eat", 250, 650);
    
  }  else if (randomoption == 2){
     //LED 2 LIGHT 
     myPort.write(2);
     fill(0);
     textSize(60);
     text("Bunny wants to bathe", 250, 650);
  }  else if (randomoption == 3){
  
    //LED 3 LIGHT 
    myPort.write(3);
    fill(0);
    textSize(60);
    text("Bunny wants to sleep", 250, 650);
  }
}

 void idlecharacter()
  {
    image(img, 288, 188, 400, 400);
  }
