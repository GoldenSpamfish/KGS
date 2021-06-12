#pragma clang diagnostic push
#pragma ide diagnostic ignored "cppcoreguidelines-narrowing-conversions"
/*
* Arduino Wireless Communication Tutorial
*       Example 1 - Receiver Code
*                
* by Dejan Nedelkovski, www.HowToMechatronics.com
* 
* Library: TMRh20/RF24, https://github.com/tmrh20/RF24/
*/
#include <SPI.h>
#include <RF24/nRF24L01.h>
#include <RF24/RF24.h>
#include<Wire.h>
#include<Servo.h>
const int MPU=0x68;
int16_t AcX,AcY,AcZ,Tmp,GyX,GyY,GyZ,ServX,ServY,accum,control,dir,Loffs,
Roffs,Voffs,OptX,OptY,OptZ,input[3], DiffX, DiffY, DiffZ, Top, Bot, Mid, ServLVal, ServRVal;

Servo ServL;
Servo ServR;
Servo ServV;
RF24 radio(8, 9); // CE, CSN
const byte address[6] = "00001";

void setup() {
    Wire.begin();
    Wire.beginTransmission(MPU);
    Wire.write(0x6B);
    Wire.write(0);
    Wire.endTransmission(true);
    ServL.attach(2);
    ServV.attach(3);
    ServR.attach(4);
    dir=5;
    control=5;

    Loffs=-30;
    Roffs=-30;
    OptY=0;
    OptX=0;
    OptZ=0;


    Serial.begin(9600);
    radio.begin();
    radio.openReadingPipe(0, address);
    radio.setPALevel(RF24_PA_MIN);
    radio.startListening();

    Top=145;
    Mid=135;
    Bot=125;

    accum=0;
}
void loop() {

    if (radio.available()) {
        int16_t input[3] = {0,0,0};
        radio.read(&input, sizeof(input));
        OptX=input[0];
        OptY=input[1];
        OptZ=input[2];
    }

    if (accum<5){
    accum++;    }
    else if (accum==5){
    accum=0;    }

    Wire.beginTransmission(MPU);
    Wire.write(0x3B);
    Wire.endTransmission(false);
    Wire.requestFrom(MPU,6,true);
    AcX=Wire.read()<<8|Wire.read();
    AcY=Wire.read()<<8|Wire.read();
    AcZ=Wire.read()<<8|Wire.read();

    AcX=(AcX/200)-7;
    AcY=(AcY/200)-4;


    DiffY=AcY-OptY;
    DiffX=AcX-OptX;

    ServRVal=0;
    ServRVal=0;



    if (DiffY<-12){
        ServLVal=(Bot+Loffs);
        ServRVal=(Bot+Roffs);
    }

    else if (DiffY>12){
        ServLVal=(Top+Loffs);
        ServRVal=(Top+Roffs);
    }
    else{
        ServLVal=(Mid+Loffs);
        ServRVal=(Mid+Roffs);

    }


    if (DiffX<-12){
        ServLVal+=(Top+Loffs);
        ServRVal+=(Bot+Roffs);
    }

    else if (DiffX>12){
        ServLVal+=(Bot+Loffs);
        ServRVal+=(Top+Roffs);
    }

    else{
        ServLVal+=(Mid+Loffs);
        ServRVal+=(Mid+Roffs);
    }

    ServLVal=ServLVal/2;
    ServRVal=ServRVal/2;



    ServL.write(ServLVal);
    ServR.write(ServRVal);


    delay(100);
    //----------------------------------------------------
    // Serial Section
   if(accum==5) {

       Serial.println(ServLVal);
       Serial.println(ServRVal);

       Serial.println("Controller:");
       Serial.print("X: ");
       Serial.println(OptX);

       Serial.print("Y: ");
       Serial.println(OptY);

       Serial.print("Z: ");
       Serial.println(OptZ);
       Serial.print("\n");

       Serial.println("Rocket:");
       Serial.print("X: ");
       Serial.println(AcX);

       Serial.print("Y: ");
       Serial.println(AcY);
       Serial.print("\n\n");
   }


}
#pragma clang diagnostic pop