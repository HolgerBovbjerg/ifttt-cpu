#include <SPI.h>
#include <LoRa.h>

int bbb = 0;
byte SensorVal;
byte extra = 0;
int SensorValToSend = 0;
int DataToSend = 0;
int DataToReceive = 0;
int DataAvailable = 0;

int array2[] = {0,0,0,0,0,0,0,0};                                     //the values in the array can just be 0. 
int array3[] = {0,0,0,0,0,0,0,0};
int sensorPin = 0;                                                    //the analog pin the TMP36's Vout (sense) pin is connected to
                                                                      //the resolution is 10 mV / degree centigrade with a
                                                                      //500 mV offset to allow for negative temperatures
int TempSensor = 0;
void setup()

{
  Serial.begin(9600);
  while (!Serial);
  
  Serial.println("LoRa Ready");                                       //Printed if LoRa Ready
  if (!LoRa.begin(868E6)) {
  Serial.println("Starting LoRa failed!");                            //Printed if LoRa Faild
  while (1);
  }
  
}

void loop()
{
     TempSensor = map(analogRead(sensorPin), 0, 1023, 0, 255);        //Temp is a byte, if a char is wanted. change 1,255 to -128,127.
     delay(1000);
   //getting the voltage reading from the temperature sensor
     /*
     int reading = analogRead(sensorPin);  
     
     // converting that reading to voltage, for 3.3v arduino use 3.3
     float voltage = reading * 5.0;
     voltage /= 1024.0; 
     
     // print out the voltage
     Serial.print(voltage); Serial.println(" volts");
     
     // now print out the temperature
     float temperatureC = (voltage - 0.5) * 100 ;  //converting from 10 mv per degree wit 500 mV offset
                                                   //to degrees ((voltage - 500mV) times 100)
     Serial.print(temperatureC); Serial.println(" degrees C");

     // now convert to Fahrenheit
     float temperatureF = (temperatureC * 9.0 / 5.0) + 32.0;
     Serial.print(temperatureF); Serial.println(" degrees F");
     
     delay(1000);                                     //waiting a second
    
    }
    */
  
  //if (DataAvailable > 0) { //if data is avalible the temperatur shell bes read and sendt back via LoRa.
    if (array3[0] == TempSensor){                                                      //if the temp is the same as the one in the array, the value will not be send.
      bbb = 0;
    }
    else                                                                               //if the value is different from the one in the array, the value will be send til the i2c slave over LoRa.
    {
    array3[0] = TempSensor;
 
    bitWrite(array3[1], 0,(bitRead(array3[0],0)));                                     //Changes the bits from Data receeved data to SlaveSend one bit at the time.
    bitWrite(array3[1], 1,(bitRead(array3[0],1)));
    bitWrite(array3[1], 2,(bitRead(array3[0],2)));
    bitWrite(array3[1], 3,(bitRead(array3[0],3)));
    bitWrite(array3[1], 4,(bitRead(array3[0],4)));
    bitWrite(array3[1], 5,(bitRead(array3[0],5)));
    bitWrite(array3[1], 6,(bitRead(array3[0],6)));
    bitWrite(array3[1], 7,(bitRead(array3[0],7)));
    
    Serial.println("Sensor Value: ");
    //Serial.println(SensorVal,BIN);
    //Serial.println(SensorVal);
    Serial.println(array3[1],BIN);
    Serial.println(array3[1]);
    //Serial.println("Modtaget over LoRa: ");
    //Serial.println(array2[0],BIN);
    //Serial.println(array2[0]);
    //DataAvailable = 0;
    bbb = 1;                                                                            //when bbb = 1 the data wil be sendt to the LoRa slave module.
  }
   delay(50);

   if (bbb == 1){                                                                       //if bbb = 1 the data is ready to be sendt.
    Serial.println("Sending packet: ");
    //Serial.println(SensorVal);
    SensorValToSend = SensorVal;
    Serial.println(SensorValToSend);
    Serial.println(array3[1]);
    DataToSend = 1;                                                                    
    // read packet

    while (DataToSend > 0)
    {
      
      // send packet
      LoRa.beginPacket();
      //LoRa.print(SensorValToSend);                                                    //Prints the input 
      LoRa.print(array3[1]);
      LoRa.endPacket();
      
      delay(100);

      DataToSend = 0;                                                                   
      bbb = 0;                                                                          //when bbb = 0. the module is ready to receave again.
    }
  }

  if (bbb == 0){                                                                        //let the LoRa recive when it is not sending.
    int packetSize = LoRa.parsePacket();
    if (packetSize) {
      // received a packet
      Serial.println("Received packet: ");
      DataToReceive = 1;                                                                //DataToReceive = 1 to continiue the while loop.
      // read packet

      while (DataToReceive > 0)
      {
        array2[0] = LoRa.read();                                                        //the receeved data is put into array2 location 0. the data is not used to eanything.
        //DataAvailable = 1;                                                            //when data available = 1, the data from the sensor is stored and send back to the other LoRa module.
        DataToReceive = 0;
      }
    }
  delay(20);
  }

}
    
