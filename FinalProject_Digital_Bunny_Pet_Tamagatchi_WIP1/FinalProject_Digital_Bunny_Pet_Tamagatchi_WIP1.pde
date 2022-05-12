//Digital Bunny Pet Tamagatchi
//Priya Begum Final
//add-ons: loading screen at the beginning(pet in bed and getting out of bed after loadin gis finished), option to name pet 
PImage img;
float randomoption = int(random(1,3));
void setup() {
  size(1000,900);
  //font = createFont("Cinzel-Bold.ttf" , 32);
  //textFont(font);
  img = loadImage("png-clipart-Cute-Anime-Chibi-Drawings_thumbnail.png");

}

void draw() {
  
  background(200, 255, 255);
  idlecharacter();
  println(randomoption);
  
  if (randomoption == 1)
  {
       //LED 1 LIGHT
    fill(0);
    textSize(60);
    text("Bunny wants to eat", 250, 650);
  
  }  else if (randomoption == 2){
       //LED 2 LIGHT 
       fill(0);
    textSize(60);
    text("Bunny wants to bathe", 250, 650);
  }  else if (randomoption == 3){
  
      //LED 3 LIGHT 
      fill(0);
    textSize(60);
    text("Bunny wants to sleep", 250, 650);
  }
}

 void idlecharacter()
  {
    image(img, 288, 188, 400, 400);
  }
