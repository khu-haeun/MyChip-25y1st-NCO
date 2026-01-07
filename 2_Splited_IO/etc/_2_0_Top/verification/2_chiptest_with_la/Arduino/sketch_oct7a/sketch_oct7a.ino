#define CLK 56
#define EN 54
#define MODE 55
#define FCW00 21
#define FCW01 20
#define FCW02 19
#define FCW03 18
#define FCW04 17
#define FCW05 16
#define FCW06 15
#define FCW07 14
#define FCW08 0
#define FCW09 1
#define FCW10 2
#define FCW11 3
#define FCW12 4
#define FCW13 5
#define FCW14 6
#define FCW15 7
#define FCW16 8
#define FCW17 9
#define FCW18 10
#define FCW19 11
#define X_VLD 46
#define X_00  44
#define X_01  42
#define X_02  40
#define X_03  38
#define X_04  36 
#define X_05  34 
#define X_06  32 
#define X_07  30 
#define X_08  28 
#define X_09  26
#define X_10  24 
#define X_11  22
#define Y_VLD 47
#define Y_00  23
#define Y_01  25
#define Y_02  27
#define Y_03  29
#define Y_04  31
#define Y_05  33
#define Y_06  35
#define Y_07  37
#define Y_08  39
#define Y_09  41
#define Y_10  43
#define Y_11  45


//--------------------------------------------------------------------
void establishContact()
{
  while (Serial.available() <= 0)
  {
    Serial.print('A');  // send a capital A
    delay(300);
    if (Serial.read()==(int)'A')
      break;
  }
}
//---------------------------------------------------------------------
void setup()
{
  // start serial port at 9600 bps:
  Serial.begin(115200);
  while (!Serial)
  {
    ;  // wait for serial port to connect. Needed for native USB port only
  }
  establishContact();  // send a byte to establish contact until receiver responds

  // Set all Arduino's digital pins as INPUT mode
  //for (uint32_t dPins = 22; dPins < 54; dPins++)
  //  pinMode( dPins, INPUT);

  // Set Arduino's digital pins to output mode
  //    for DUT's input ports
  pinMode(CLK  ,OUTPUT);
  pinMode(EN   ,OUTPUT);
  pinMode(MODE ,OUTPUT);
  pinMode(FCW00,OUTPUT);
  pinMode(FCW01,OUTPUT);
  pinMode(FCW02,OUTPUT);
  pinMode(FCW03,OUTPUT);
  pinMode(FCW04,OUTPUT);
  pinMode(FCW05,OUTPUT);
  pinMode(FCW06,OUTPUT);
  pinMode(FCW07,OUTPUT);
  pinMode(FCW08,OUTPUT);
  pinMode(FCW09,OUTPUT);
  pinMode(FCW10,OUTPUT);
  pinMode(FCW11,OUTPUT);
  pinMode(FCW12,OUTPUT);
  pinMode(FCW13,OUTPUT);
  pinMode(FCW14,OUTPUT);
  pinMode(FCW15,OUTPUT);
  pinMode(FCW16,OUTPUT);
  pinMode(FCW17,OUTPUT);
  pinMode(FCW18,OUTPUT);
  pinMode(FCW19,OUTPUT);
  pinMode(X_VLD,INPUT);
  pinMode(X_00,INPUT);
  pinMode(X_01,INPUT);
  pinMode(X_02,INPUT);
  pinMode(X_03,INPUT);
  pinMode(X_04,INPUT);
  pinMode(X_05,INPUT);
  pinMode(X_06,INPUT);
  pinMode(X_07,INPUT);
  pinMode(X_08,INPUT);
  pinMode(X_09,INPUT);
  pinMode(X_10,INPUT);
  pinMode(X_11,INPUT);
  pinMode(Y_VLD,INPUT);
  pinMode(Y_00,INPUT);
  pinMode(Y_01,INPUT);
  pinMode(Y_02,INPUT);
  pinMode(Y_03,INPUT);
  pinMode(Y_04,INPUT);
  pinMode(Y_05,INPUT);
  pinMode(Y_06,INPUT);
  pinMode(Y_07,INPUT);
  pinMode(Y_08,INPUT);
  pinMode(Y_09,INPUT);
  pinMode(Y_10,INPUT);
  pinMode(Y_11,INPUT);

  // Preset for output pins
  digitalWrite(CLK,LOW);
  digitalWrite(EN,LOW);
  digitalWrite(MODE,LOW);
  digitalWrite(FCW00,LOW);
  digitalWrite(FCW01,LOW);
  digitalWrite(FCW02,LOW);
  digitalWrite(FCW03,LOW);
  digitalWrite(FCW04,LOW);
  digitalWrite(FCW05,LOW);
  digitalWrite(FCW06,LOW);
  digitalWrite(FCW07,LOW);
  digitalWrite(FCW08,LOW);
  digitalWrite(FCW09,LOW);
  digitalWrite(FCW10,LOW);
  digitalWrite(FCW11,LOW);
  digitalWrite(FCW12,LOW);
  digitalWrite(FCW13,LOW);
  digitalWrite(FCW14,LOW);
  digitalWrite(FCW15,LOW);
  digitalWrite(FCW16,LOW);
  digitalWrite(FCW17,LOW);
  digitalWrite(FCW18,LOW);
  digitalWrite(FCW19,LOW);

  // Monitoring ......
  pinMode(LED_BUILTIN, OUTPUT);
  digitalWrite(LED_BUILTIN, HIGH);
}
//---------------------------------------------------------------------
#define N_RX  3
uint8_t rxBuf[N_RX];
// [0] : | clk | En  | Mod | --- |F[19]|F[18]|F[17]|F[16]|
// [1] : |F[15]|F[14]|F[13]|F[12]|F[11]|F[10]|F[ 9]|F[ 8]|
// [2] : |F[ 7]|F[ 6]|F[ 5]|F[ 4]|F[ 3]|F[ 2]|F[ 1]|F[ 0]|
void RxPacket()
{
  int rxByte;

  while(true)
  {
    // Resceive test vector from SC testbench
    if (Serial.available() >= N_RX)
    {
      for(int i=0; i<N_RX; i++)
      {
        rxByte = Serial.read();
        rxBuf[i] = (uint8_t)rxByte;
      }
      // Apply received test vector to DUT's input ports

      // Set IO firstly -----------------------------
      digitalWrite(FCW00,	(rxBuf[2]&0x01)? HIGH:LOW);
      digitalWrite(FCW01, (rxBuf[2]&0x02)? HIGH:LOW);
      digitalWrite(FCW02, (rxBuf[2]&0x04)? HIGH:LOW);
      digitalWrite(FCW03, (rxBuf[2]&0x08)? HIGH:LOW);
      digitalWrite(FCW04, (rxBuf[2]&0x10)? HIGH:LOW);
      digitalWrite(FCW05, (rxBuf[2]&0x20)? HIGH:LOW);
      digitalWrite(FCW06, (rxBuf[2]&0x40)? HIGH:LOW);
      digitalWrite(FCW07, (rxBuf[2]&0x80)? HIGH:LOW);
      //---------------------------------------------
	    digitalWrite(FCW08, (rxBuf[1]&0x01)? HIGH:LOW);
      digitalWrite(FCW09, (rxBuf[1]&0x02)? HIGH:LOW);
      digitalWrite(FCW10, (rxBuf[1]&0x04)? HIGH:LOW);
      digitalWrite(FCW11, (rxBuf[1]&0x08)? HIGH:LOW);
      digitalWrite(FCW12, (rxBuf[1]&0x10)? HIGH:LOW);
      digitalWrite(FCW13, (rxBuf[1]&0x20)? HIGH:LOW);
      digitalWrite(FCW14, (rxBuf[1]&0x40)? HIGH:LOW);
      digitalWrite(FCW15, (rxBuf[1]&0x80)? HIGH:LOW);
      //---------------------------------------------
	    digitalWrite(FCW16, (rxBuf[0]&0x01)? HIGH:LOW);
      digitalWrite(FCW17, (rxBuf[0]&0x02)? HIGH:LOW);
      digitalWrite(FCW18, (rxBuf[0]&0x04)? HIGH:LOW);
      digitalWrite(FCW19, (rxBuf[0]&0x08)? HIGH:LOW);
	    //digitalWrite(_____, (rxBuf[0]&0x10)? HIGH:LOW);
      digitalWrite(MODE, (rxBuf[0]&0x20)? HIGH:LOW);
      digitalWrite(EN, (rxBuf[0]&0x40)? HIGH:LOW);
      //---------------------------------------------

      // Then Clocking ------------------------------
      digitalWrite(CLK,	(rxBuf[0]&0x80)? HIGH:LOW);
      //---------------------------------------------

      return;
    }
  }
}
//---------------------------------------------------------------------
#define N_TX  4
uint8_t txBuf[N_TX];
// rxPacket[-] | (7) | (6) | (5) | (4) | (3) | (2) | (1) | (0) |
// X       [0] | Vld | --- | --- | --- |D[11]|D[10]|D[ 9]|D[ 8]|
//         [1] |D[ 7]|D[ 6]|D[ 5]|D[ 4]|D[ 3]|D[ 2]|D[ 1]|D[ 0]|
// Y       [2] | Vld | --- | --- | --- |D[11]|D[10]|D[ 9]|D[ 8]|
//         [3] |D[ 7]|D[ 6]|D[ 5]|D[ 4]|D[ 3]|D[ 2]|D[ 1]|D[ 0]|
void TxPacket()
{
  int txByte;

  while(1)
  {
    // Capture DUT's output ports
    txBuf[0] = digitalRead(X_VLD)<< 7 |
				       //digitalRead(ISNEG)<< 6 |
				       //digitalRead(ISNEG)<< 5 |
				       //digitalRead(ISNEG)<< 4 |
				       digitalRead(X_11)<< 3 |
				       digitalRead(X_10)<< 2 |
				       digitalRead(X_09)<< 1 |
				       digitalRead(X_08)<< 0 ;
    
    txBuf[1] = digitalRead(X_07)<< 7 |
				       digitalRead(X_06)<< 6 |
				       digitalRead(X_05)<< 5 |
				       digitalRead(X_04)<< 4 |
				       digitalRead(X_03)<< 3 |
				       digitalRead(X_02)<< 2 |
				       digitalRead(X_01)<< 1 |
				       digitalRead(X_00)<< 0 ;
    
    txBuf[2] = digitalRead(Y_VLD)<< 7 |
				       //digitalRead(ISNEG)<< 6 |
				       //digitalRead(ISNEG)<< 5 |
				       //digitalRead(ISNEG)<< 4 |
				       digitalRead(Y_11)<< 3 |
				       digitalRead(Y_10)<< 2 |
				       digitalRead(Y_09)<< 1 |
				       digitalRead(Y_08)<< 0 ;
    
    txBuf[3] = digitalRead(Y_07)<< 7 |
				       digitalRead(Y_06)<< 6 |
				       digitalRead(Y_05)<< 5 |
				       digitalRead(Y_04)<< 4 |
				       digitalRead(Y_03)<< 3 |
				       digitalRead(Y_02)<< 2 |
				       digitalRead(Y_01)<< 1 |
				       digitalRead(Y_00)<< 0 ;


    // Send ports' captured value back to SC testbench
    if (Serial.availableForWrite() >= N_TX)
    {
      for(int i=0; i<N_TX; i++)
      {
        txByte = (int)txBuf[i];
        Serial.write(txByte);
      }

      return;
    }
  }
}
//----------------------------------------------------------------
void loop()
{
  RxPacket();
  TxPacket();
}
