#include <MPU6050_tockn.h>
#include <Wire.h>
#include <LiquidCrystal.h>
MPU6050 sport(Wire);

long timer = 0;
int exercises = 0;

double angle_X;
double last_angle_X = -100;

double angle_Y;
double last_angle_Y = 100;

const int BUTTONS = 0;
const int pin_d4 = 4;
const int pin_d5 = 5;
const int pin_d6 = 6;
const int pin_d7 = 7;
const int pin_RS = 8;
const int pin_EN = 9;
const int pin_BL = 10;
LiquidCrystal lcd (pin_RS, pin_EN, pin_d4, pin_d5, pin_d6, pin_d7);

int choose = 2;

void start() {
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("Option:");
  lcd.setCursor(1, 1);
  lcd.print("Lift");
  lcd.setCursor(8, 0);
  lcd.print("Pull-ups");
  lcd.setCursor(8, 1);
  lcd.print("Push-ups");
}

void ready_for() {
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("Get ready!");
  delay(3000);
  lcd.clear();
}

void arrow() {
  if(choose == 3) {
    start();
    lcd.setCursor(0, 1);
    lcd.print(">");
  }
  else if(choose == 2) {
    start();
    lcd.setCursor(7, 0);
    lcd.print(">");
  }
  else if(choose == 4) {
    start();
    lcd.setCursor(7, 1);
    lcd.print(">");
  }
}

void go() {
  start();
  int x;
  while(1){
    x = analogRead(BUTTONS);
    delay(75);
    if(x < 60) {
      choose += 1;
      if(choose > 4) {
        choose -= 1;
      }
      arrow();
    }
    if(x > 60 && x < 200) {
      choose -= 2;
      if(choose < 2){
        choose += 2;  
      }
      arrow();
    }
    if(x > 200 && x < 400) {
      choose += 2;
      if(choose > 4){
        choose -= 2;
      }
      arrow();
    }
    if(x > 400 && x < 600) {
      choose -= 1;
      if(choose < 2){
        choose += 1;
      }
      arrow();
    }
    if(x > 600 && x < 800) {
      ready_for();
      return;
    }
  }
}

void setup() {
  Serial.begin(9600);
  Wire.begin();
  sport.begin();
  lcd.begin(16, 2);
}

int x;
int ex_seconds = 0;
void loop() {
  go();
  while(1) {
    label:
      sport.update();
    
    if(millis() - timer > ex_seconds){
      angle_X = sport.getAngleX();
      angle_Y = sport.getAngleY();

      lcd.setCursor(0, 0);
      lcd.print("Come on!");
    
      if(choose == 2){
        ex_seconds = 1000;
        if((angle_X - last_angle_X) < -100) {
          exercises++;
        }
        last_angle_X = angle_X;
      }

      if(choose == 3) {
        ex_seconds = 500;
        if(angle_X > 0 and last_angle_X < 0) {
          exercises++;
        }
        last_angle_X = angle_X;
      }

      if(choose == 4) {
        ex_seconds = 500;
        if((angle_X - last_angle_X) > 40) {
          exercises++;
        }
        last_angle_X = angle_X;
      }

      lcd.setCursor(8, 1);
      lcd.print("Count: ");
      lcd.setCursor(14, 1);
      lcd.print(exercises);

      x = analogRead(0);
      if(x > 600 and x < 800) {
        lcd.clear();
        lcd.setCursor(0, 0);
        lcd.print("Num: ");
        lcd.setCursor(5, 0);
        lcd.print(exercises);
        lcd.setCursor(10, 0);
        lcd.print("Again?");
        lcd.setCursor(0, 1);
        lcd.print("Left:NO Up:YES");
        while(1) {
          x = analogRead(0);
          if(x > 60 and x < 200) {
            exercises = 0;
            last_angle_X = -100;
            last_angle_Y = 100;
            ready_for();
            goto label;
          }
          else if(x > 400 and x < 600) {
            exercises = 0;
            last_angle_X = -100;
            last_angle_Y = 100;
            return;
          }
        }
      }
    
      timer = millis();
    }
  }
}
