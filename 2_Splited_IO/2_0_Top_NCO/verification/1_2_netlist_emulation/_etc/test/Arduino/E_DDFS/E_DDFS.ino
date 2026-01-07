/*
  'BOOTH4' Co-Emulation interface

  Emulator Pin Mapping:
    Arduino DUE & Arty A7-100 & Verilog RTL
  --------------- ---------- ----------- -----------
  SAM3X8E/Digital Pmod /FPGA  SOP28       BOOTH4
  --------------- ---------- ----------- -----------
   PB26/22        JD-4 /F3    28          FCW[19]
   PA14/23        JD-10/G2    27          FCW[18]
   PA15/24        JD-3 /F4    26          FCW[17]
   PD0 /25        JD-9 /H2    25          FCW[16]
   PD1 /26        JD-2 /D3    24          FCW[15]
   PD2 /27        JD-8 /D2    23          FCW[14]
   PD3 /28        JD-1 /D4    22          FCW[13]
   PD6 /29        JD-7 /E2    -           FCW[12]

   PD9 /30        JC-4 /V11   21          FCW[11]
   PA7 /31        JC-10/U13   20          FCW[10]
   PD10/32        JC-3 /V10   19          FCW[9]
   PC1 /33        JC-9 /T13   18          FCW[8]
   PC2 /34        JC-2 /V12   17          FCW[7]
   PC3 /35        JC-8 /V14   16          FCW[6]
   PC4 /36        JC-1 /U12   15          FCW[5]
   PC5 /37        JC-7 /U14   -           FCW[4]

   PC6 /38        JB-4 /C15   14          FCW[3]
   PC7 /39        JB-10/J15   13          FCW[2] 
   PC8 /40        JB-3 /D15   12          FCW[1]
   PC9 /41        JB-9 /K15   11          FCW[0]
   PA19/42        JB-2 /E16   10          Dout[11]
   PA20/43        JB-8 /J18   09          Dout[10]
   PC19/44        JB-1 /E15   08          Dout[9]
   PC18/45        JB-7 /J17   -           Dout[8]

   PC17/46        JA-4 /D12   07          Dout[7]
   PC16/47        JA-10/K16   06          Dout[6]
   PC15/48        JA-3 /A11   05          Dout[5]
   PC14/49        JA-9 /A18   04          Dout[4]
   PC13/50        JA-2 /B11   03          Dout[3]
   PC12/51        JA-8 /B18   02          Dout[2]
   PB21/52        JA-1 /G13   01          Dout[1]
   PB14/53        JA-7 /D13   -           Dout[0]
*/
#define DPIN_CLK 	13 
#define DPIN_En 	12 
#define DPIN_SEL	11
#define DPIN_VLD	10	

#define DPIN_FCW19 	22 
#define DPIN_FCW18 	23 
#define DPIN_FCW17 	24  
#define DPIN_FCW16 	25  
#define DPIN_FCW15 	26  
#define DPIN_FCW14 	27
#define DPIN_FCW13 	28
#define DPIN_FCW12 	29

#define DPIN_FCW11	30 
#define DPIN_FCW10 	31
#define DPIN_FCW9 	32
#define DPIN_FCW8 	33
#define DPIN_FCW7 	34
#define DPIN_FCW6 	35
#define DPIN_FCW5 	36
#define DPIN_FCW4 	37

#define DPIN_FCW3 	38
#define DPIN_FCW2 	39
#define DPIN_FCW1 	40
#define DPIN_FCW0 	41
//---------------------
#define DPIN_Dout11 42
#define DPIN_Dout10 43
#define DPIN_Dout9 	44
#define DPIN_Dout8 	45

#define DPIN_Dout7 	46
#define DPIN_Dout6 	47
#define DPIN_Dout5 	48
#define DPIN_Dout4 	49
#define DPIN_Dout3 	50
#define DPIN_Dout2 	51
#define DPIN_Dout1 	52
#define DPIN_Dout0 	53

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
  for (uint32_t dPins = 22; dPins < 54; dPins++)
    pinMode( dPins, INPUT);

  // Set Arduino's digital pins to output mode
  //    for DUT's input ports
  pinMode(DPIN_CLK,	OUTPUT);
  pinMode(DPIN_En,	OUTPUT);
  pinMode(DPIN_SEL,	OUTPUT);
  pinMode(DPIN_FCW19, OUTPUT);
  pinMode(DPIN_FCW18, OUTPUT);
  pinMode(DPIN_FCW17, OUTPUT);
  pinMode(DPIN_FCW16, OUTPUT);
  pinMode(DPIN_FCW15, OUTPUT);
  pinMode(DPIN_FCW14, OUTPUT);
  pinMode(DPIN_FCW13, OUTPUT);
  pinMode(DPIN_FCW12, OUTPUT);
  pinMode(DPIN_FCW11, OUTPUT);
  pinMode(DPIN_FCW10, OUTPUT);
  pinMode(DPIN_FCW9, OUTPUT);
  pinMode(DPIN_FCW8, OUTPUT);
  pinMode(DPIN_FCW7, OUTPUT);
  pinMode(DPIN_FCW6, OUTPUT);
  pinMode(DPIN_FCW5, OUTPUT);
  pinMode(DPIN_FCW4, OUTPUT);
  pinMode(DPIN_FCW3, OUTPUT);
  pinMode(DPIN_FCW2, OUTPUT);
  pinMode(DPIN_FCW1, OUTPUT);
  pinMode(DPIN_FCW0, OUTPUT);

  // Preset for output pins
  digitalWrite(DPIN_CLK, LOW);
  digitalWrite(DPIN_En, LOW);
  digitalWrite(DPIN_SEL, LOW);
  
  digitalWrite(DPIN_FCW19, LOW);
  digitalWrite(DPIN_FCW18, LOW);
  digitalWrite(DPIN_FCW17, LOW);
  digitalWrite(DPIN_FCW16, LOW);
  digitalWrite(DPIN_FCW15, LOW);
  digitalWrite(DPIN_FCW14, LOW);
  digitalWrite(DPIN_FCW13, LOW);
  digitalWrite(DPIN_FCW12, LOW);
  digitalWrite(DPIN_FCW11, LOW);
  digitalWrite(DPIN_FCW10, LOW);
  digitalWrite(DPIN_FCW9, LOW);
  digitalWrite(DPIN_FCW8, LOW);
  digitalWrite(DPIN_FCW7, LOW);
  digitalWrite(DPIN_FCW6, LOW);
  digitalWrite(DPIN_FCW5, LOW);
  digitalWrite(DPIN_FCW4, LOW);
  digitalWrite(DPIN_FCW3, LOW);
  digitalWrite(DPIN_FCW2, LOW);
  digitalWrite(DPIN_FCW1, LOW);
  digitalWrite(DPIN_FCW0, LOW);

  // Monitoring ......
  pinMode(LED_BUILTIN, OUTPUT);
  digitalWrite(LED_BUILTIN, HIGH);
}
//---------------------------------------------------------------------
#define N_RX  3
uint8_t rxBuf[N_RX];
// rxBuf[0]: x|x|x|x|x|START|RESET|CLK
// rxBuf[1]: Y[3:0]|X[3:0]
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
      // Set IO firstly
      //digitalWrite(DPIN_CLK,	(rxBuf[0]&0x80)? HIGH:LOW);
      digitalWrite(DPIN_En, 	(rxBuf[0]&0x40)? HIGH:LOW);
      digitalWrite(DPIN_SEL,	(rxBuf[0]&0x20)? HIGH:LOW);
	  
      digitalWrite(DPIN_FCW19, 	(rxBuf[0]&0x08)? HIGH:LOW);
      digitalWrite(DPIN_FCW18, 	(rxBuf[0]&0x04)? HIGH:LOW);
      digitalWrite(DPIN_FCW17, 	(rxBuf[0]&0x02)? HIGH:LOW);
      digitalWrite(DPIN_FCW16, 	(rxBuf[0]&0x01)? HIGH:LOW);
      digitalWrite(DPIN_FCW15, 	(rxBuf[1]&0x80)? HIGH:LOW);
      digitalWrite(DPIN_FCW14, 	(rxBuf[1]&0x40)? HIGH:LOW);
      digitalWrite(DPIN_FCW13, 	(rxBuf[1]&0x20)? HIGH:LOW);
	    digitalWrite(DPIN_FCW12, 	(rxBuf[1]&0x10)? HIGH:LOW);
      digitalWrite(DPIN_FCW11, 	(rxBuf[1]&0x08)? HIGH:LOW);
      digitalWrite(DPIN_FCW10, 	(rxBuf[1]&0x04)? HIGH:LOW);
      digitalWrite(DPIN_FCW9,	(rxBuf[1]&0x02)? HIGH:LOW);
      digitalWrite(DPIN_FCW8,	(rxBuf[1]&0x01)? HIGH:LOW);
      digitalWrite(DPIN_FCW7,	(rxBuf[2]&0x80)? HIGH:LOW);
      digitalWrite(DPIN_FCW6,	(rxBuf[2]&0x40)? HIGH:LOW);
      digitalWrite(DPIN_FCW5,	(rxBuf[2]&0x20)? HIGH:LOW);
	    digitalWrite(DPIN_FCW4,	(rxBuf[2]&0x10)? HIGH:LOW);
      digitalWrite(DPIN_FCW3,	(rxBuf[2]&0x08)? HIGH:LOW);
      digitalWrite(DPIN_FCW2,	(rxBuf[2]&0x04)? HIGH:LOW);
      digitalWrite(DPIN_FCW1,	(rxBuf[2]&0x02)? HIGH:LOW);
      digitalWrite(DPIN_FCW0,	(rxBuf[2]&0x01)? HIGH:LOW);
	  
      // Then Clocking
      digitalWrite(DPIN_CLK,	(rxBuf[0]&0x80)? HIGH:LOW);

      return;
    }
  }
}
//---------------------------------------------------------------------
#define N_TX  2
uint8_t txBuf[N_RX];
// txBuf[0]: x|x|x|x|x|x|x|VALID
// txBuf[1]: Z[7:0]
void TxPacket()
{
  int txByte;

  while(1)
  {
    // Capture DUT's output ports
    txBuf[0] = 	digitalRead(DPIN_VLD) 	<< 7 |
				digitalRead(DPIN_Dout11)<< 3 |
				digitalRead(DPIN_Dout10)<< 2 |
				digitalRead(DPIN_Dout9)	<< 1 |
				digitalRead(DPIN_Dout8)	<< 0 ;
    txBuf[1] = 	digitalRead(DPIN_Dout7) << 7 |
				digitalRead(DPIN_Dout6) << 6 |
				digitalRead(DPIN_Dout5) << 5 |
				digitalRead(DPIN_Dout4) << 4 |
				digitalRead(DPIN_Dout3) << 3 |
				digitalRead(DPIN_Dout2) << 2 |
				digitalRead(DPIN_Dout1) << 1 |
				digitalRead(DPIN_Dout0) << 0;
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
  digitalWrite(LED_BUILTIN, (rxBuf[0]&0x80)? HIGH:LOW);
}
