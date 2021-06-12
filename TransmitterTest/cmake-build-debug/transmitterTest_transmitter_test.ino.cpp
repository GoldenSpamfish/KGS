// automatically generated by arduino-cmake
#line 1 "D:/Programming/C/KGS/TransmitterTest/transmitter_test.ino"
#pragma clang diagnostic push
#pragma ide diagnostic ignored "cppcoreguidelines-narrowing-conversions"
/*
* Arduino Wireless Communication Tutorial
*     Example 1 - Transmitter Code
*                
* by Dejan Nedelkovski, www.HowToMechatronics.com
* 
* Library: TMRh20/RF24, https://github.com/tmrh20/RF24/
*/
#include <SPI.h>
#include <nRF24L01.h>
#include <RF24.h>
#include<Wire.h>

#line 18 "D:/Programming/C/KGS/TransmitterTest/cmake-build-debug/transmitterTest_transmitter_test.ino.cpp"
#include "Arduino.h"

//=== START Forward: D:/Programming/C/KGS/TransmitterTest/transmitter_test.ino
 void setup() ;
 void setup() ;
 void loop() ;
 void loop() ;
//=== END Forward: D:/Programming/C/KGS/TransmitterTest/transmitter_test.ino
#line 14 "D:/Programming/C/KGS/TransmitterTest/transmitter_test.ino"


RF24 radio(8, 9); // CE, CSN
const byte address[6] = "00001";
const int MPU=0x68;
int16_t AcX,AcY,AcZ,Tmp,GyX,GyY,GyZ,ServX,ServY,accum,control,dir,Loffs,Roffs,Voffs,OptX,OptY,OptZ, input[3];

void setup() {
    Wire.begin();
    Wire.beginTransmission(MPU);
    Wire.write(0x6B);
    Wire.write(0);
    Wire.endTransmission(true);

    //Serial.begin(9600);

    dir=5;
    control=5;

    Loffs=0;
    Roffs=0;

    OptY=0;
    OptX=0;
    OptZ=0;

    radio.begin();
    radio.openWritingPipe(address);
    radio.setPALevel(RF24_PA_MIN);
    radio.stopListening();
}
void loop() {
    Wire.beginTransmission(MPU);
    Wire.write(0x3B);
    Wire.endTransmission(false);
    Wire.requestFrom(MPU,6,true);
    AcX=Wire.read()<<8|Wire.read();
    AcY=Wire.read()<<8|Wire.read();
    AcZ=Wire.read()<<8|Wire.read();

    Wire.beginTransmission(MPU);
    Wire.write(0x43); // Gyro data first register address 0x43
    Wire.endTransmission(false);
    Wire.requestFrom(MPU, 6, true);
    ;
    GyX=Wire.read()<<8|Wire.read();
    GyY=Wire.read()<<8|Wire.read();
    GyZ=Wire.read()<<8|Wire.read();
    //Serial.println(GyX);

    AcX=(AcX/200)-7;
    AcY=(AcY/200)+3;

    int16_t input[3] = {AcX,AcY,GyZ/200};
    radio.write(&input, sizeof(input));
    delay(20);
}
#pragma clang diagnostic pop