byte val;
const int LED1 = 13;
const int LED2 = 12;
const int LED3 = 8;
//const int Button1 = ~5;
//int buttonState1 = 0;
//int button = 0;

void setup() {
  pinMode(LED1, OUTPUT); 
  pinMode(LED2, OUTPUT);
  pinMode(LED3, OUTPUT);
  //pinMode(Button1, INPUT);
  Serial.begin(9600);

}

void loop() {
 // buttonState1 = digitalRead(Button1);
  if (Serial.available()) { 
    val = Serial.read(); 
  }
  if (val == 0) { 
    digitalWrite(LED1, LOW); 
    digitalWrite(LED2, LOW);
    digitalWrite(LED3, LOW);
  }
  else if (val == 1) { 
    digitalWrite(LED1, HIGH); 
    digitalWrite(LED2, LOW); 
    digitalWrite(LED3, LOW);
  }
  else if (val == 2) { 
    digitalWrite(LED2, HIGH); 
    digitalWrite(LED1, LOW); 
    digitalWrite(LED3, LOW);
  }
  else if (val == 3) {
    digitalWrite(LED3, HIGH);
    digitalWrite(LED2, LOW); 
    digitalWrite(LED1, LOW);
  }
  delay(10); 
  /*if (buttonState1 == HIGH) {
    button = 1;
  }*/
}
