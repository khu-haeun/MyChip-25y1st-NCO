/**********************************************************************
Filename: E_fir_pe.h
Purpose : FPGA Emulated PE of Systolic FIR filter
Author  : goodkook@gmail.com
History : Mar. 2024, First release
***********************************************************************/

#ifndef _W_SUB1_
#define _W_SUB1_

#include <systemc.h>

// Includes for accessing Arduino via serial port
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>

SC_MODULE(WrapperOfSub1)
{
    sc_in<bool>             clk;
	
    sc_in<bool>             en;
    sc_in<sc_uint<20>>      inFCW;
	
    sc_out<bool>      		outVld;
    sc_out<bool>            outIsNeg;
    sc_out<sc_uint<2> >     outPhase;

#define N_TX    3
#define N_RX    1

    void wrapperThread(void)
    {
        uint8_t     x, y, txPacket[N_TX], rxPacket[N_RX];
		uint32_t	_inFCW;     //for bit op & type cast
		uint32_t	_outPhase;  //for bit op & type cast
		
        while(true)
        {
            // Positive edge Clock
            wait(clk.posedge_event());
			_inFCW = inFCW.read();
                                                            // | (7) | (6) | (5) | (4) | (3) | (2) | (1) | (0) |
            txPacket[0] = (uint8_t)(clk.read()? 1:0) << 7 | // | clk | (6) | (5) | (4) | (3) | (2) | (1) | (0) |
						  (uint8_t)(en.read() ? 1:0) << 6 | // | clk | En  | (5) | (4) | (3) | (2) | (1) | (0) |
						  (uint8_t)(_inFCW >> 16   );       // | clk | En  | --- | --- |F[19]|F[18]|F[17]|F[16]|
            txPacket[1] = (uint8_t)(_inFCW >> 8	   );	    // |F[15]|F[14]|F[13]|F[12]|F[11]|F[10]|F[ 9]|F[ 8]|
            txPacket[2] = (uint8_t)(_inFCW		   );	    // |F[ 7]|F[ 6]|F[ 5]|F[ 4]|F[ 3]|F[ 2]|F[ 1]|F[ 0]|
            
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
            //         [0] | Vld | Neg | --- | --- | --- | --- |P[ 1]|P[ 0]| 
			outVld.write(  (rxPacket[0] & 0x80) ? 1:0);   //1000_0000
            outIsNeg.write((rxPacket[0] & 0x40) ? 1:0); //0100_0000
            _outPhase = (uint32_t)(rxPacket[0] & 0x03); //0000_0011
            outPhase.write((sc_uint<2>)_outPhase);

            //write low clk
			wait(clk.negedge_event());
			_inFCW = inFCW.read();
                                                            // | (7) | (6) | (5) | (4) | (3) | (2) | (1) | (0) |
            txPacket[0] = (uint8_t)(clk.read()? 1:0) << 7 | // | clk | (6) | (5) | (4) | (3) | (2) | (1) | (0) |
						  (uint8_t)(en.read() ? 1:0) << 6 | // | clk | En  | (5) | (4) | (3) | (2) | (1) | (0) |
						  (uint8_t)(_inFCW >> 16   );       // | clk | En  | --- | --- |F[19]|F[18]|F[17]|F[16]|
            txPacket[1] = (uint8_t)(_inFCW >> 8	   );	    // |F[15]|F[14]|F[13]|F[12]|F[11]|F[10]|F[ 9]|F[ 8]|
            txPacket[2] = (uint8_t)(_inFCW		   );	    // |F[ 7]|F[ 6]|F[ 5]|F[ 4]|F[ 3]|F[ 2]|F[ 1]|F[ 0]|
            
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

    SC_CTOR(WrapperOfSub1):
        clk     ("clk"),
        en      ("en"),
        inFCW   ("inFCW"),
        outVld  ("outVld"),
        outIsNeg("outIsNeg"),
        outPhase("outPhase")
    {
        SC_THREAD(wrapperThread);
        sensitive << clk;

        // Arduino DUT
        //fd = open("/dev/ttyACM0", O_RDWR | O_NDELAY | O_NOCTTY);
        //fd = open("/dev/ttyUSB0", O_RDWR | O_NOCTTY);
        fd = open("/dev/serial/by-id/usb-Arduino__www.arduino.cc__Arduino_Due_Prog._Port_03535343535351517021-if00", O_RDWR | O_NOCTTY);
        if (fd < 0)
        {
            perror("Error opening serial port");
            return;
        }
        // Set up serial port
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
        printf("Connection established...\n");
    }
    
    ~WrapperOfSub1(void)
    {
    }
};

#endif
