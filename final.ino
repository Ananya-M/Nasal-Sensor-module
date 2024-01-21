#include <SPI.h>
#include <SD.h>

const int chipSelect = 4; 

#define BLYNK_PRINT Serial

#include <SoftwareSerial.h>
SoftwareSerial SwSerial(8, 9); // RX, TX
    
#include <BlynkSimpleSerialBLE.h>

// You should get Auth Token in the Blynk App.
// Go to the Project Settings (nut icon).
char auth[] = "Auth Token";

SoftwareSerial SerialBLE(8,9); // RX, TX

BlynkTimer timer;

// This function sends Arduino's up time every second to Virtual Pin (5).
// In the app, Widget's reading frequency should be set to PUSH. This means
int analogpin=A0;
float volt;
float volt1;
float val;// that you define how often to send data to Blynk App.
float sensor;
void myTimerEvent()
{
  // You can send any value at any time.
  val=analogRead(A0);
  volt=5*val/(1023);
  Blynk.virtualWrite(V5,volt);
}
  void setup()
{
  // Debug console
  Serial.begin(9600);

  SerialBLE.begin(9600);

  while (!Serial) {
    ; // wait for serial port to connect. Needed for native USB port only
  }


  Serial.print("Initializing SD card...");

  // see if the card is present and can be initialized:
  if (!SD.begin(chipSelect)) {
    Serial.println("Card failed, or not present");
    // don't do anything more:
    while (1);
  }
  Serial.println("card initialized.");
  
  Blynk.begin(SerialBLE, auth);

  Serial.println("Waiting for connections...");

  // Setup a function to be called every second
  timer.setInterval(1000L, myTimerEvent);
}

void loop()
{
 
  String dataString = "";

  // read three sensors and append to the string:
  //for (int analogPin = 0; analogPin < 3; analogPin++) {
   // sensor = analogRead(analogPin);
   // volt1=5*val/(1023);
   // dataString += String(volt1);
   // }

  // open the file. note that only one file can be open at a time,
  // so you have to close this one before opening another.
  File dataFile = SD.open("filename.txt", FILE_WRITE);

  // if the file is available, write to it:
  if (dataFile) {
    //dataFile.println(dataString);
           
     for(long x = 0;x<=5000;x++){
      sensor = analogRead(analogpin);
    volt1=5*sensor/(1023);
   // dataString += String(volt1);
     dataFile.print(volt1);
      Serial.print(volt1);// print to the serial port too:

      dataFile.print(" Volts");
      Serial.print(" Volts");
            dataFile.print(", ");
      Serial.print(", ");
      
        dataFile.print(x * 1);  
            Serial.print(x*1);
             dataFile.println("seconds");  
            Serial.println("seconds");
              Blynk.run();
        timer.run(); // Initiates BlynkTimer
        delay(1000);
     }
      dataFile.close();
    
  }
  // if the file isn't open, pop up an error:
  else {
    Serial.println("error opening datalog.txt");
  }

   
}

