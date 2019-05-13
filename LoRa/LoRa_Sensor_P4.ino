#include <SPI.h>
#include <LoRa.h>

int bbb = 0;

int DataToSend = 0;
int DataToReceive = 0;
int DataAvailable = 2;

int array2[] = {233,8,1,0,0,0,0,0};                                                   //the values in the array can just be 0. 

int sensorPin = 0; //the analog pin the TMP36's Vout (sense) pin is connected to
                            //the resolution is 10 mV / degree centigrade with a
                            //500 mV offset to allow for negative temperatures

void setup()

{
  Serial.begin(9600);
  while (!Serial);
  
  Serial.println("LoRa Ready");                                                        //Printed if LoRa Ready
  if (!LoRa.begin(868E6)) {
  Serial.println("Starting LoRa failed!");                                              //Printed if LoRa Faild
  while (1);
  }
  
}

void loop()
{
  
   //getting the voltage reading from the temperature sensor
     int reading = analogRead(sensorPin);  
     /*
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
    
  if (DataAvailable > 0) { //if data is avalible the temperatur shell bes read and sendt back via LoRa.
    
    array2[2] = reading;
    delay(1100);                                                                        //Delay is set to 1100 to be sure that the other module is ready to receive
  
    DataAvailable = 0;
    bbb = 1;                                                                            //when bbb is set to 1 the module will go into the sending loop.
  }

   if (bbb == 1){                                                                       //if bbb = 1 the data is ready to be sendt.
    Serial.print("Sending packet: ");
    DataToSend = 1;                                                                    
    // read packet

    while (DataToSend > 0)
    {
      
      // send packet
      LoRa.beginPacket();
      LoRa.print(array2[2]); //Prints the input 
      LoRa.endPacket();
      
      delay(1000);

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
        DataAvailable = 1;                                                              //when data available = 1, the data from the sensor is stored and send back to the other LoRa module.
        DataToReceive = 0;
      }
    }
  delay(20);
  }

}
    
