int LED_PIN0 = 2;
int LED_PIN1 = 4;
int LED_PIN2 = 6;
int LED_PIN3 = 9;
int BUTTON_PIN = 12;

int buttonState;
int value;
int value2;
int lightMode = 0;

void setup() {
  pinMode(LED_PIN0, OUTPUT);
  pinMode(LED_PIN1, OUTPUT);
  pinMode(LED_PIN2, OUTPUT);
  pinMode(LED_PIN3, OUTPUT);
  pinMode(BUTTON_PIN, INPUT);
  
  Serial.begin(9600);
  buttonState = digitalRead(BUTTON_PIN); // read initial state
}


void loop() {
  // read the pushbutton input pin:
  value = digitalRead(BUTTON_PIN); // read input and store in value
  delay(40);
  value2 = digitalRead(BUTTON_PIN);
  if(value == value2) {
    if (value != buttonState) { // button state has has changed
     if (value == LOW) {   //checks if the button is pressed
       if (lightMode == 0){ //the light is off
        lightMode = 1; }  // turn light on!!
          else {
            lightMode = 0; //turn light off!!
          }
     }
    }
    buttonState = value;
  }
       
       if (lightMode ==1) {  //cylon hat

        digitalWrite(LED_PIN3, LOW);
        digitalWrite(LED_PIN0, HIGH);
        delay(80);
        digitalWrite(LED_PIN0, LOW);
        digitalWrite(LED_PIN1, HIGH);
        delay(80);
        digitalWrite(LED_PIN1, LOW);
        digitalWrite(LED_PIN2, HIGH);
        delay(80);
        digitalWrite(LED_PIN2, LOW);
        digitalWrite(LED_PIN3, HIGH);
        delay(80);
        digitalWrite(LED_PIN3, LOW);
        digitalWrite(LED_PIN2, HIGH);
        delay(80);
        digitalWrite(LED_PIN2, LOW);
        digitalWrite(LED_PIN1, HIGH);
        delay(80);
        digitalWrite(LED_PIN1, LOW);
        digitalWrite(LED_PIN0, HIGH);
        delay(80);
        digitalWrite(LED_PIN0, LOW);
      } 
   }



