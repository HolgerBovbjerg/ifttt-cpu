

#include <SPI.h>
#include <LoRa.h>
#include <Wire.h>


byte SlaveReceived = 0;
byte SlaveSend = 0;
int DataToMaster = 0;
String fff;
int aaa = 0;
int bbb = 0;
int ccc = 0;
int eee = 0;
int DataToSend = 0;
int DataToReceive = 0;
int DataAvailable = 2;
char *str = "hej";
int *ptr;
char array1[] = {0,0,0,0,0,0,0,0};
int array2[] = {233,8,1,0,0,0,0,0};
int array4[] = {0,0,0,0,0,0,0,0};

void setup()

{

  Serial.begin(9600);
  while (!Serial);
  
  Wire.begin(8);                               //Begins I2C communication with Slave Address as 8 at pin (A4,A5)
  Wire.onReceive(receiveEvent);                //Function call when Slave receives value from master
  Wire.onRequest(requestEvent);                //Function call when Master request value from Slave

  pinMode(4, INPUT);                             //Acknowledge
  pinMode(5, OUTPUT);                            //Interupt
  
  Serial.println("LoRa Ready");                  //Printed if LoRa Ready
  if (!LoRa.begin(868E6)) {
    Serial.println("Starting LoRa failed!");     //Printed if LoRa Faild
    while (1);
  }
}

void loop()
{
  aaa = (digitalRead(4));  //Reads Acknowledge bit

  if (DataAvailable > 0) {
    
    Serial.print("array2 [0]: ");
    Serial.println(array2[0]);
    Serial.print("array2 BIN [0]: ");
    Serial.println(array2[0],BIN);
    
    Serial.print("BitRead: ");
    Serial.print(bitRead(array2[0],15));
    Serial.print(bitRead(array2[0],14));
    Serial.print(bitRead(array2[0],13));
    Serial.print(bitRead(array2[0],12));
    Serial.print(bitRead(array2[0],11));
    Serial.print(bitRead(array2[0],10));
    Serial.print(bitRead(array2[0],9));
    Serial.print(bitRead(array2[0],8));
    Serial.print(bitRead(array2[0],7));
    Serial.print(bitRead(array2[0],6));
    Serial.print(bitRead(array2[0],5));
    Serial.print(bitRead(array2[0],4));
    Serial.print(bitRead(array2[0],3));
    Serial.print(bitRead(array2[0],2));
    Serial.print(bitRead(array2[0],1));
    Serial.println(bitRead(array2[0],0));
    
    Serial.print("SlaveSend: ");
    Serial.println(SlaveSend);
    
    Serial.print("SlaveSend BIN: ");
    Serial.println(SlaveSend,BIN);
    
    bitWrite(SlaveSend, 0,(bitRead(array2[0],0)));
    bitWrite(SlaveSend, 1,(bitRead(array2[0],1)));
    bitWrite(SlaveSend, 2,(bitRead(array2[0],2)));
    bitWrite(SlaveSend, 3,(bitRead(array2[0],3)));
    bitWrite(SlaveSend, 4,(bitRead(array2[0],4)));
    bitWrite(SlaveSend, 5,(bitRead(array2[0],5)));
    bitWrite(SlaveSend, 6,(bitRead(array2[0],6)));
    bitWrite(SlaveSend, 7,(bitRead(array2[0],7)));
    
    Serial.print("SlaveSend: ");
    Serial.println(SlaveSend);
    Serial.print("SlaveSend BIN: ");
    Serial.println(SlaveSend,BIN);
    
    digitalWrite(5, HIGH);
    
    delay(20);
  
    DataAvailable = 0; //skal fjernes når der skal næses over i2c
  
  }
  if (aaa == HIGH){ //if Acknowledge HIGH 
    digitalWrite(5,LOW);
    //DataAvailable = 0;
  }

  if (bbb == 1){ //hvis bbb er 1, så er der modtaget data fra master over i2c.
    Serial.print("Sending packet: ");
    DataToSend = 1; //sættes til 1 for at sende data
    // read packet

    while (DataToSend > 0)//(LoRa.available())
    {
      
      // send packet
      LoRa.beginPacket();
      LoRa.print(SlaveReceived); //Prints the input 
      LoRa.endPacket();
      
      delay(1000);

      DataToSend = 0; // sættes til nul når pakken er sendt
      bbb = 0; //sættes til 0 når bakken er sendt
    }
  }

  if (bbb == 0){ //let the LoRa recive when it is not sending.
    int packetSize = LoRa.parsePacket();
    if (packetSize) {
      // received a packet
      Serial.println("Received packet: ");
      DataToReceive = 1;
      // read packet

      while (DataToReceive > 0)
      {
        array2[0] = LoRa.read();
        DataAvailable = 1;
        DataToReceive = 0;
      }
    }
  delay(20);
  }

}


void receiveEvent (int howMany)                    //This Function is called when Slave receives value from master
  {
  SlaveReceived = Wire.read();                    //Used to read value received from master and store in variable SlaveReceived
  bbb = 1; //sættes til 1 for at fortække at der er data der skal sendes
  }

void requestEvent()                                //This Function is called when Master wants value from slave
  {
  Wire.write(SlaveSend);                          // sends one byte converted POT value to master
  }
