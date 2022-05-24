const int Button1 = 2;
int buttonState1 = 0;
const int Button2 = 4;
int buttonState2 = 0;
const int Button3 = 7;
int buttonState3 = 0;

void setup() {
  pinMode(Button1, INPUT);
  pinMode(Button2, INPUT);
  pinMode(Button3, INPUT);
  Serial.begin(9600);
  
}

void loop() {
   buttonState1 = digitalRead(Button1);
   buttonState2 = digitalRead(Button2);
   buttonState3 = digitalRead(Button3);

    delay(100);
    //Serial.write(buttonState1);
    //Serial.println(buttonState1);
    //Serial.println(buttonState2);
    //Serial.println(buttonState3);
    Serial.write(buttonState2);
    Serial.write(buttonState3);
    
}
