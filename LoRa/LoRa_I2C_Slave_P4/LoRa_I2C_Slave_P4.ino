#include <SPI.h>                                                // Include SPI fore cumminication with LoRa.
#include <LoRa.h>                                               // Include LoRa
#include <Wire.h>                                               // Include Arduino Wire library for I2C
#define SLAVE_ADDR 9                                            // Define Slave I2C Address
                             
                             
byte SensorValReceived_1 = 0;
byte SensorValReceived_2 = 0;
byte SensorValReceived_3 = 0;

byte SensorValReceived_byte_1 = 0;
byte SlaveReceived;
byte SlaveSend;
byte SensorVal;
int DataToMaster;

int aaa;
int bbb;

int DataToSend;
int DataToReceive;
int DataAvailable;

int array2[] = {0,0,0,0,0,0,0,0};
int array3[] = {1,1,1,0,0,0,0,0};

void setup(){

  Serial.begin(9600);
  while (!Serial);
  
  Wire.begin(SLAVE_ADDR);                                       //Initialize I2C communications as Slave
  //Wire.begin(8);                                              //Begins I2C communication with Slave Address as 8 at pin (A4,A5)
  Wire.onReceive(receiveEvent);                                 //Function call when Slave receives value from master
  Wire.onRequest(requestEvent);                                 //Function call when Master request value from Slave
 
  pinMode(4, INPUT);                                            //Acknowledge
  pinMode(5, OUTPUT);                                           //Interupt
  
  Serial.println("LoRa Ready");                                 //Printed if LoRa Ready
  if (!LoRa.begin(868E6)) {
    Serial.println("Starting LoRa failed!");                    //Printed if LoRa Faild
    while (1);
  }
}

void receiveEvent ()                                            //This Function is called when Slave receives value from master
  {
  while (0 < Wire.available())
  {
    SlaveReceived = Wire.read();                                //Used to read value received from master and store in variable SlaveReceived                                                                            //sættes til 1 for at fortælle at der er data der skal sendes
  }
bbb = 1;
}               

void requestEvent()                                             //This Function is called when Master wants value from slave
  {
  Wire.write(SensorValReceived_byte_1);                         // sends one byte converted POT value to master
  }

void LoRaLoop()
{
  aaa = (digitalRead(4));                                       //Reads Acknowledge bit

  if (DataAvailable == 1) {

    
    
    bitWrite(SensorValReceived_1, 0,(bitRead(array2[0],0)));    //Changes the bits from Data receeved data to SlaveSend one bit at the time.
    bitWrite(SensorValReceived_1, 1,(bitRead(array2[0],1)));    //Each received value is only send one caracter at the time.
    bitWrite(SensorValReceived_1, 2,(bitRead(array2[0],2)));    //4 bits are needet to send a value ower 7. 
    bitWrite(SensorValReceived_1, 3,(bitRead(array2[0],3)));    //Each value can be fron 0 - 9.
                                                                //Since we need a value with 3 caracters, we need 3 different arrays.
    bitWrite(SensorValReceived_2, 0,(bitRead(array2[1],0)));                                     
    bitWrite(SensorValReceived_2, 1,(bitRead(array2[1],1)));
    bitWrite(SensorValReceived_2, 2,(bitRead(array2[1],2)));
    bitWrite(SensorValReceived_2, 3,(bitRead(array2[1],3)));
    
    bitWrite(SensorValReceived_3, 0,(bitRead(array2[2],0)));    //Changes the bits from Data receeved data to SlaveSend one bit at the time.
    bitWrite(SensorValReceived_3, 1,(bitRead(array2[2],1)));
    bitWrite(SensorValReceived_3, 2,(bitRead(array2[2],2)));
    bitWrite(SensorValReceived_3, 3,(bitRead(array2[2],3)));
    
    array3[0] = array2[0];                                      //Are used so we can controle if the data receeved over LoRa are new
    array3[1] = array2[1];
    array3[2] = array2[2];

    
    Serial.println("Modtaget over LoRa: ");
    
    Serial.print(SensorValReceived_1);
    if (SensorValReceived_2 < 10){
    Serial.print(SensorValReceived_2);
    }
    if (SensorValReceived_3 < 10){
    Serial.print(SensorValReceived_3);
    }
    Serial.println(" ");
                                                                                        //The first value we receve are always used. there fore we onle need to chek the other to values 
    if ((SensorValReceived_2 > 9) and (SensorValReceived_3 > 9))                        //If the two last values are not used, they will be 10 and 15. there fore we chek if they are over 9.
    {
      SensorValReceived_byte_1 = SensorValReceived_1;                                   //If value 2 and 3 are over 9. only value 1 are put into the sensor val received.
    }
    if ((SensorValReceived_2 < 10) and (SensorValReceived_3 > 9))                       //If value 2 are under 10 and value 3 are over 9. then value
    {
      SensorValReceived_byte_1 = ((SensorValReceived_1 * 10) + SensorValReceived_2);    //Value (1 * 10) + value 2 is put in to sensor val received 
    }
    if ((SensorValReceived_2 < 10) and (SensorValReceived_3 < 10))
    {
      SensorValReceived_byte_1 = ((SensorValReceived_1 * 100) + (SensorValReceived_2 * 10) + SensorValReceived_3);
    }
    Serial.println("Sammenlagt");
    Serial.println(SensorValReceived_byte_1);
    Serial.println(SensorValReceived_byte_1,BIN);
    
    
    digitalWrite(5, HIGH);                                                             //sets interupt High
    //skal fjernes når der skal næses over i2c!!!
    DataAvailable = 0;                                                                 
    delay(20);
  }
  if (aaa == HIGH){                                                                    //if Acknowledge HIGH
    digitalWrite(5,LOW);                                                               //set interupt low
    //Skal Med når vi skal sende over I2C
    //DataAvailable = 0;                                                               //set data available to 0 so taht interupt do not get higt again
  }

/*  //this part is needed if we want to only get a new temp reading when the master saks fore it
if (bbb == 1){                                                                       //hvis bbb er 1, så er der modtaget data fra master over i2c.
    Serial.println("Sending packet: ");
    DataToSend = 1;                                                                    //sættes til 1 for at sende data
    // read packet

    while (DataToSend == 1)
    {
      
      // send packet
      LoRa.beginPacket();
      LoRa.print(SlaveReceived); //Prints the input 
      LoRa.endPacket();
      
      DataToSend = 0;                                                                   // sættes til nul når pakken er sendt
      bbb = 0;                                                                          //sættes til 0 når bakken er sendt
    
      delay(1000);
    }
  
  }
*/
  if (Serial.available() == 0){   //(bbb == 0){                                       //let the LoRa recive when it is not sending.
    int packetSize = LoRa.parsePacket();
    if (packetSize) {
      // received a packet
      Serial.println("Received packet: ");
      DataToReceive = 1;                                                              //DataToReceive is set to 1 to continiue the while loop.
      // read packet

      while (DataToReceive == 1)
      //while (LoRa.available())
      {
        array2[0] = LoRa.read();
        array2[1] = LoRa.read();
        array2[2] = LoRa.read();
        //SensorValReceived_1 = LoRa.read();
        //Serial.print((char)LoRa.read());
        DataToReceive = 0;
      }
     
     if ((array3[0] != array2[0]) and (array3[1] != array2[1]) and (array3[2] != array2[2]))                        //compare new data with the data we got last time
     {                                                                                                              //if the data are not the same.
     DataAvailable = 1;                                                                                             //DataAvailable = 1, and the data will be storred, else the LoRa will just look fore new data.
     }                                                                                                              
    }
  delay(20);
  }

}


void loop()
{
  LoRaLoop();
}

  


  
 
