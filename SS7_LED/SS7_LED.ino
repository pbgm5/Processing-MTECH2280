 const int Button = ~5;
 const int LED1 = 2;
 const int LED2 = 4;
 const int LED3 = 7;
 const int LED4 = 8;
 const int LED5 = 12;
 const int LED6 = 13;
int buttonState = 0;
  
void setup() {
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(LED3, OUTPUT);
  pinMode(LED4, OUTPUT);
  pinMode(LED5, OUTPUT);
  pinMode(LED6, OUTPUT);
  pinMode(Button, INPUT);
  
}

void loop() {
  buttonState = digitalRead(Button);
  delay(10);

  if(buttonState == HIGH) {
    digitalWrite(LED1, HIGH);
    delay(1000);
    digitalWrite(LED2, HIGH);
    delay(2000);
    digitalWrite(LED3,HIGH);
   delay(1000);
    digitalWrite(LED4,HIGH);
    delay(2000);
    digitalWrite(LED5, HIGH);
    delay(1000);
    digitalWrite(LED6,HIGH);
    delay(2000);
  }else{
    (buttonState == LOW);
  digitalWrite(LED1,LOW);
  delay(0);
  digitalWrite(LED2,LOW);
  delay(0);
  digitalWrite(LED3,LOW);
  delay(0);
  digitalWrite(LED4,LOW);
  delay(0);
  digitalWrite(LED5,LOW);
  delay(0);
  digitalWrite(LED6,LOW);
  delay(0);
  }

}
