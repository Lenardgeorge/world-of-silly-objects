#include <Arduino_LSM9DS1.h>

int LED_TOP= 2;
int LED_LEFT= 3;
int LED_BOTTOM= 4;
int LED_RIGHT= 5;

float x, y, z;


void setup() {
  // put your setup code here, to run once:
  pinMode(LED_TOP,OUTPUT);
  pinMode(LED_LEFT,OUTPUT);
  pinMode(LED_RIGHT,OUTPUT);
  pinMode(LED_BOTTOM,OUTPUT);

  Serial.begin(9600);
  while (!Serial);
  Serial.println("Started");

  if (!IMU.begin()) {
    Serial.println("Failed to initialize IMU!");
    while (1);
  }

  Serial.print("Accelerometer sample rate = ");
  Serial.print(IMU.accelerationSampleRate());
  Serial.println(" Hz");
  Serial.println();
  Serial.println("Acceleration in G's");
  Serial.println("X\tY\tZ");
}

void loop() {
  // put your main code here, to run repeatedly:
  /*
  digitalWrite(LED_TOP,HIGH);
  delay(1000);
  digitalWrite(LED_LEFT,HIGH);
  delay(1000);
  digitalWrite(LED_RIGHT,HIGH);
  delay(1000);
  digitalWrite(LED_BOTTOM,HIGH);
  delay(1000);
  digitalWrite(LED_TOP,LOW);
  delay(1000);
  digitalWrite(LED_LEFT,LOW);
  delay(1000);
  digitalWrite(LED_RIGHT,LOW);
  delay(1000);
  digitalWrite(LED_BOTTOM,LOW);
  delay(1000);
  */
  
  if (IMU.accelerationAvailable()) {
    IMU.readAcceleration(x, y, z);

    Serial.print(x);
    Serial.print('\t');
    Serial.print(y);
    Serial.print('\t');
    Serial.println(z);
} 

  if(x > -0.7 && x < -0.5)
  {
      digitalWrite(LED_LEFT,HIGH);
      digitalWrite(LED_RIGHT,LOW);
  }
  else if (x > 0.5 && x < 0.7)
  {
      digitalWrite(LED_RIGHT,HIGH);
      digitalWrite(LED_LEFT,LOW);
  }

  if(y > -0.7 && y < -0.5)
  {
      digitalWrite(LED_TOP, HIGH);
      digitalWrite(LED_BOTTOM, LOW);
  }
  else if (y > 0.5 && y < 0.7)
  {
      digitalWrite(LED_TOP, LOW);
      digitalWrite(LED_BOTTOM, HIGH);
  }

 
}
