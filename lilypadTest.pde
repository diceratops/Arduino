int ledPin = 13;
int switchPin = 2;
int switchValue;

void setup()
{
  pinMode(ledPin, OUTPUT);
  pinMode(switchPin, INPUT);
  digitalWrite(switchPin, HIGH);
}

void loop()
{
  switchValue = digitalRead(switchPin);
  if  (switchValue == LOW) {
    digitalWrite(ledPin, HIGH);
  }
  else {
    digitalWrite(ledPin, LOW);
  }
}
