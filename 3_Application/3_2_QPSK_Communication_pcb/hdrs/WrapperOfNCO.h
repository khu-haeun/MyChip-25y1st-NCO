/**********************************************************************
Filename: E_fir_pe.h
Purpose : FPGA Emulated PE of Systolic FIR filter
Author  : goodkook@gmail.com
History : Mar. 2024, First release
***********************************************************************/

#ifndef _W_NCO_
#define _W_NCO_

#include <systemc.h>

// Includes for accessing Arduino via serial port
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>

SC_MODULE(WrapperOfNCO)
{
    //ctrl
    sc_in<bool>             clk;
    sc_in<bool>             en;
    sc_in<bool>             inMode;
    sc_in<bool>             inSelXY;

    //input
    sc_in<sc_uint<20>>      inFCW;

    //output
    sc_out<bool>      		outVld;
    sc_out<sc_uint<12>>     outData;

#define N_TX    3
#define N_RX    3

    void wrapperThread(void)
    {
        uint8_t     x, y, txPacket[N_TX], rxPacket[N_RX];
		uint32_t	_inFCW;     //for bit op & type cast
		uint32_t	_outPhase;  //for bit op & type cast
        uint16_t    oData;
		
        while(true)
        {
            // Positive edge Clock
            wait(clk.posedge_event());
			_inFCW = inFCW.read();
                                                                // | (7) | (6) | (5) | (4) | (3) | (2) | (1) | (0) |
            txPacket[0] = (uint8_t)(clk.read()? 1:0)     << 7 | // | clk | (6) | (5) | (4) | (3) | (2) | (1) | (0) |
						  (uint8_t)(en.read() ? 1:0)     << 6 | // | clk | En  | (5) | (4) | (3) | (2) | (1) | (0) |
						  (uint8_t)(inMode.read() ? 1:0) << 5 | // | clk | En  | Mod | (4) | (3) | (2) | (1) | (0) |
						  (uint8_t)(inSelXY.read()? 1:0) << 4 | // | clk | En  | Mod | (4) | (3) | (2) | (1) | (0) |
						  (uint8_t)(_inFCW >> 16   );           // | clk | En  | Mod | --- |F[19]|F[18]|F[17]|F[16]|
            txPacket[1] = (uint8_t)(_inFCW >> 8	   );	        // |F[15]|F[14]|F[13]|F[12]|F[11]|F[10]|F[ 9]|F[ 8]|
            txPacket[2] = (uint8_t)(_inFCW		   );	        // |F[ 7]|F[ 6]|F[ 5]|F[ 4]|F[ 3]|F[ 2]|F[ 1]|F[ 0]|
            
            // Send to Emulator or Chip
            for (int i=0; i<N_TX; i++)
            {
                x = txPacket[i];
                while(write(fd, &x, 1)<=0)  usleep(1);
            }
            // Receive from Emulator or chip
            for (int i=0; i<N_RX; i++)
            {
                while(read(fd, &y, 1)<=0)   usleep(1);
                rxPacket[i] = y;
            }
			
            // rxPacket[-] | (7) | (6) | (5) | (4) | (3) | (2) | (1) | (0) |
            // Data    [0] | Vld | --- | --- | --- |D[11]|D[10]|D[ 9]|D[ 8]|
            //         [1] |D[ 7]|D[ 6]|D[ 5]|D[ 4]|D[ 3]|D[ 2]|D[ 1]|D[ 0]|
			outVld.write((rxPacket[0] & 0x80) ? 1:0);   //1000_0000
            oData = (uint16_t)(rxPacket[0] & 0x0F) << 8; //MSB 4bit
            oData = oData | rxPacket[1];                  //LSB 8bit
            outData.write(oData);

            //write low clk
			wait(clk.negedge_event());
			_inFCW = inFCW.read();
                                                                // | (7) | (6) | (5) | (4) | (3) | (2) | (1) | (0) |
            txPacket[0] = (uint8_t)(clk.read()? 1:0)     << 7 | // | clk | (6) | (5) | (4) | (3) | (2) | (1) | (0) |
						  (uint8_t)(en.read() ? 1:0)     << 6 | // | clk | En  | (5) | (4) | (3) | (2) | (1) | (0) |
						  (uint8_t)(inMode.read() ? 1:0) << 5 | // | clk | En  | Mod | (4) | (3) | (2) | (1) | (0) |
						  (uint8_t)(inSelXY.read()? 1:0) << 4 | // | clk | En  | Mod | (4) | (3) | (2) | (1) | (0) |
						  (uint8_t)(_inFCW >> 16   );           // | clk | En  | Mod | --- |F[19]|F[18]|F[17]|F[16]|
            txPacket[1] = (uint8_t)(_inFCW >> 8	   );	        // |F[15]|F[14]|F[13]|F[12]|F[11]|F[10]|F[ 9]|F[ 8]|
            txPacket[2] = (uint8_t)(_inFCW		   );	        // |F[ 7]|F[ 6]|F[ 5]|F[ 4]|F[ 3]|F[ 2]|F[ 1]|F[ 0]|
            
            // Send to Emulator or Chip
            for (int i=0; i<N_TX; i++)
            {
                x = txPacket[i];
                while(write(fd, &x, 1)<=0)  usleep(1);
            }
            // Receive from Emulator or chip
            for (int i=0; i<N_RX; i++)
            {
                while(read(fd, &y, 1)<=0)   usleep(1);
                rxPacket[i] = y;
            }
        }
    }

    // Arduino Serial IF
    int fd;                 // Serial port file descriptor
    struct termios options; // Serial port setting

    SC_CTOR(WrapperOfNCO):
        clk     ("clk"),
        en      ("en"),
        inMode  ("inMode"),
        inSelXY  ("inSelXY"),
        inFCW   ("inFCW"),
        outVld  ("outVld"),
        outData ("outData")
    {
        SC_THREAD(wrapperThread);
        sensitive << clk;

        // Arduino DUT
        //fd = open("/dev/ttyACM0", O_RDWR | O_NDELAY | O_NOCTTY);
        //ATTRS{idVendor} 2341 /VID
        //ATTRS{idProduct} 003d /PID
        //ATTRS{serial} 0353 6373 3323 5160 6033
        fd = open("/dev/serial/by-id/usb-Arduino__www.arduino.cc__Arduino_Due_Prog._Port_03536373332351606033-if00", O_RDWR | O_NOCTTY);
        if (fd < 0)
        {
            perror("Error opening serial port");
            return;
        }
        // Set up serial port115200
        options.c_cflag = B115200 | CS8 | CLOCAL | CREAD;
        options.c_iflag = IGNPAR;
        options.c_oflag = 0;
        options.c_lflag = 0;
        // Apply the settings
        tcflush(fd, TCIFLUSH);
        tcsetattr(fd, TCSANOW, &options);

        // Establish Contact
        int len = 0;
        char rx;
        while(!len)
            len = read(fd, &rx, 1);
        if (rx=='A')
            write(fd, &rx, 1);
        perror("Connection established...\n");
    }
    
    ~WrapperOfNCO(void)
    {
    }
};

#endif
