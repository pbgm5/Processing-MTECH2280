PImage[] eating = new PImage[3];
PImage[] sleeping = new PImage[3];
PImage[] bathing = new PImage[3];
PImage img;
int currentFrame = 0;
int numFrames = 3;

void setup() {
  frameRate(3);
  size(1000,900);
  eating[0] = loadImage("Eatingbunny.png");
  eating[1] = loadImage("Eatingbunny2.png");
  eating[2] = loadImage("Eatingbunny3.png");
  bathing[0] = loadImage("bathebunny1.png");
  bathing[1] = loadImage("bathebunny2.png");
  bathing[2] = loadImage("bathebunny3.png");
  sleeping[0] = loadImage("sleepybunny.png");
  sleeping[1] = loadImage("sleepybunny2.png");
  sleeping[2] = loadImage("sleepybunny3.png");
  
}void draw() {
   if (keyPressed && key == '1' )
   {
   // if (key == '1');
  currentFrame = (currentFrame+1) % numFrames;
  int offset = 0;
  for (int x = -100; x < width; x += eating[0].width) { 
    image(eating[(currentFrame+offset) % numFrames], 50,10, 900, 900);
    offset+=2;
    image(eating[(currentFrame+offset) % numFrames], 50,10, 900, 900);
    offset+=2;
  }
  }else if (key == '2') 
  {
    currentFrame = (currentFrame+1) % numFrames;
      int offset2 = 0;
      for (int x = -100; x < width; x += bathing[0].width) { 
      image(bathing[(currentFrame+offset2) % numFrames], 50,10, 900, 900);
      offset2+=2;
      image(bathing[(currentFrame+offset2) % numFrames], 50,10, 900, 900);
      offset2+=2;
      }
 } else if (key == 3) {
    currentFrame = (currentFrame+1) % numFrames;
      int offset3 = 0;
      for (int x = -100; x < width; x += sleeping[0].width) { 
      image(sleeping[(currentFrame+offset3) % numFrames], 50,10, 900, 900);
      offset3+=2;
      image(sleeping[(currentFrame+offset3) % numFrames], 50,10, 900, 900);
      offset3+=2;
      } 
  }
  }
