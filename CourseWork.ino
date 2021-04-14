#include <MPU6050_tockn.h>
#include <Wire.h>
#include <LiquidCrystal.h>

MPU6050 sport(Wire);
long timer = 0;

double curr_accX = 0;
double last_accX = 0;

double curr_accY = 0;
double last_accY = 0;

double curr_accZ = 0;
double last_accZ = 0;


double curr_gyrX = 0;
double last_gyrX = 0;

double curr_gyrY = 0;
double last_gyrY = 0;

double curr_gyrZ = 0;
double last_gyrZ = 0;

int exercises = 0;

const int BUTTONS = 0;
const int pin_d4 = 4;
const int pin_d5 = 5;
const int pin_d6 = 6;
const int pin_d7 = 7;
const int pin_RS = 8;
const int pin_EN = 9;
const int pin_BL = 10;
LiquidCrystal lcd (pin_RS, pin_EN, pin_d4, pin_d5, pin_d6, pin_d7);

int choose = 1;

void start() {
  lcd.clear();
  lcd.setCursor(1, 0);
  lcd.print("Pull-ups");
  lcd.setCursor(1, 1);
  lcd.print("Push-ups");
  lcd.setCursor(10, 0);
  lcd.print("Squat");
  lcd.setCursor(10, 1);
  lcd.print("Lift");
}

void ready_for() {
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("Get ready!");
  delay(2500);
  lcd.clear();
}

void arrow(int where) {
  if(where == 1){
    start();
    lcd.setCursor(0, 0);
    lcd.print(">");
  }
  else if(where == 2) {
    start();
    lcd.setCursor(0, 1);
    lcd.print(">");
  }
  else if(where == 3) {
    start();
    lcd.setCursor(9, 0);
    lcd.print(">");
  }
  else if(where == 4) {
    start();
    lcd.setCursor(9, 1);
    lcd.print(">");
  }
}

double without_minus(double *num) {
  if(*num < 0) {
    *num = *num * (-1);
  }
}

void go() {
  start();
  int x;
  while(1){
    x = analogRead(BUTTONS);
    if(x < 60) {
      choose += 2;
      if(choose > 4){
        choose -= 2;
      }
      arrow(choose);
    }
    else if(x < 200){
      choose -= 1;
      if(choose < 1){
        choose += 1;  
      }
      arrow(choose);
    }
    else if(x < 400) {
      choose += 1;
      if(choose > 4){
        choose -= 1;
      }
      arrow(choose);
    }
    else if(x < 600) {
      choose -= 2;
      if(choose < 1){
        choose += 2;
      }
      arrow(choose);
    }
    else if(x < 800) {
      ready_for();
      return;
    }
  }
}

void setup() {
  Serial.begin(9600);
  Wire.begin();
  sport.begin();
  sport.calcGyroOffsets(false);
  lcd.begin(16, 2);
  go();
}

void loop() {
  sport.update();
  double balance;
  double x1;
  double x2;
  
  if(millis() - timer > 1000){
    curr_gyrX = sport.getGyroX();
    //Serial.print("gyrX : ");Serial.print(curr_gyrX);
    //lcd.setCursor(0, 0);
    //lcd.print(curr_gyrX);
  
    curr_gyrY = sport.getGyroY();
    //Serial.print("gyroY : ");Serial.print(curr_gyrY);
    //lcd.setCursor(5, 1);
    //lcd.print(curr_gyrY);
        
    curr_gyrZ = sport.getGyroZ();
    //Serial.print("\tgyroZ : ");Serial.println(sport.getGyroZ());
    //lcd.setCursor(11, 0);
    //lcd.print(curr_gyrZ);
    
    if(choose == 1){
      if(last_gyrX != 0){
        x1 = curr_gyrX;
        x2 = last_gyrX;
        without_minus(&x1);
        without_minus(&x2);
        balance = x1 - x2;
        if(balance > 40){
          exercises++;  
        }
      }
    }
    last_gyrX = curr_gyrX;
    //last_gyrY = curr_gyrY;

    lcd.clear();
    lcd.setCursor(0, 0);
    lcd.print("Num rep: ");
    lcd.setCursor(9, 0);
    lcd.print(exercises);
    lcd.setCursor(0, 1);
    lcd.print("Come on!");
        
    timer = millis();
  }
}
