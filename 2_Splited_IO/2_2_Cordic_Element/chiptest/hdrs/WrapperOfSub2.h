/**********************************************************************
Filename: E_fir_pe.h
Purpose : FPGA Emulated PE of Systolic FIR filter
Author  : goodkook@gmail.com
History : Mar. 2024, First release
***********************************************************************/

#ifndef _W_SUB2_
#define _W_SUB2_

#include <systemc.h>

// Includes for accessing Arduino via serial port
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>

SC_MODULE(WrapperOfSub2)
{
    sc_in<bool>             clk;
	sc_in<sc_uint<3>>       inStg;

    sc_in<bool>             inRdy;
    sc_in<bool>             inIsNeg;
    sc_in<sc_uint<2>>       inX;
    sc_in<sc_uint<2>>       inY;
    sc_in<sc_uint<2>>       inPhase;
    
    sc_out<bool>      		outVld;
    sc_out<bool>            outIsNeg;
    sc_out<sc_uint<2>>      outX;
    sc_out<sc_uint<2>>      outY;
    sc_out<sc_uint<2>>      outPhase;

#define N_TX    2
#define N_RX    1

    void wrapperThread(void)
    {
        uint8_t     x, y, txPacket[N_TX], rxPacket[N_RX];
		
        while(true)
        {
            // Positive edge Clock
            wait(clk.posedge_event());
                                                                 // | (7) | (6) | (5) | (4) | (3) | (2) | (1) | (0) |
            txPacket[0] = ((uint8_t)(clk.read()?1:0)     << 7) | // | clk | (6) | (5) | (4) | (3) | (2) | (1) | (0) |
						  ((uint8_t)(inStg.read()  )     << 4);  // | clk |S[ 2]|S[ 1]|S[ 0]| (3) | (2) | (1) | (0) |

                                                                 // | (7) | (6) | (5) | (4) | (3) | (2) | (1) | (0) |
            txPacket[1] = ((uint8_t)(inRdy.read()?1:0)   << 7) | // | Rdy | (6) | (5) | (4) | (3) | (2) | (1) | (0) |
                          ((uint8_t)(inIsNeg.read()?1:0) << 6) | // | Rdy | Neg | (5) | (4) | (3) | (2) | (1) | (0) |
                          ((uint8_t)inPhase.read()       << 4) | // | Rdy | Neg |P[ 1]|P[ 0]| (3) | (2) | (1) | (0) |
                          ((uint8_t)inX.read()           << 2) | // | Rdy | Neg |P[ 1]|P[ 0]|X[ 1]|X[ 0]| (1) | (0) |
                          ((uint8_t)inY.read()               );  // | Rdy | Neg |P[ 1]|P[ 0]|X[ 1]|X[ 0]|Y[ 1]|Y[ 0]|

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
            //         [0] | Vld | Neg |P[ 1]|P[ 0]|X[ 1]|X[ 0]|Y[ 1]|Y[ 0]|
			outVld.write(  (rxPacket[0] & 0x80) ? 1:0); //1000_0000
            outIsNeg.write((rxPacket[0] & 0x40) ? 1:0); //0100_0000
            outPhase.write((rxPacket[0] & 0x30) >> 4 ); //0011_0000
            outX.write(    (rxPacket[0] & 0x0C) >> 2 ); //0000_1100
            outY.write(    (rxPacket[0] & 0x03)      ); //0000_0011

            // Positive edge Clock
            wait(clk.negedge_event());
                                                                 // | (7) | (6) | (5) | (4) | (3) | (2) | (1) | (0) |
            txPacket[0] = ((uint8_t)(clk.read()?1:0)     << 7) | // | clk | (6) | (5) | (4) | (3) | (2) | (1) | (0) |
						  ((uint8_t)(inStg.read()  )     << 4);  // | clk |S[ 2]|S[ 1]|S[ 0]| (3) | (2) | (1) | (0) |

                                                                 // | (7) | (6) | (5) | (4) | (3) | (2) | (1) | (0) |
            txPacket[1] = ((uint8_t)(inRdy.read()?1:0)   << 7) | // | Rdy | (6) | (5) | (4) | (3) | (2) | (1) | (0) |
                          ((uint8_t)(inIsNeg.read()?1:0) << 6) | // | Rdy | Neg | (5) | (4) | (3) | (2) | (1) | (0) |
                          ((uint8_t)inPhase.read()       << 4) | // | Rdy | Neg |P[ 1]|P[ 0]| (3) | (2) | (1) | (0) |
                          ((uint8_t)inX.read()           << 2) | // | Rdy | Neg |P[ 1]|P[ 0]|X[ 1]|X[ 0]| (1) | (0) |
                          ((uint8_t)inY.read()               );  // | Rdy | Neg |P[ 1]|P[ 0]|X[ 1]|X[ 0]|Y[ 1]|Y[ 0]|

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

    SC_CTOR(WrapperOfSub2):
        clk     ("clk"),
	    inStg   ("inStg"),
        inRdy   ("inRdy"),
        inIsNeg ("inIsNeg"),
        inX     ("inX"),
        inY     ("inY"),
        inPhase ("inPhase"),
        outVld  ("outVld"),
        outIsNeg("outIsNeg"),
        outX    ("outX"),
        outY    ("outY"),
        outPhase("outPhase")
    {
        SC_THREAD(wrapperThread);
        sensitive << clk << inStg;

        // Arduino DUT
        //fd = open("/dev/ttyUSB0", O_RDWR | O_NDELAY | O_NOCTTY);
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
    
    ~WrapperOfSub2(void)
    {
    }
};

#endif
