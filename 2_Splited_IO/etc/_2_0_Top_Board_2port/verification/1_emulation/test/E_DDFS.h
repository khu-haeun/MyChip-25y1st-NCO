/**********************************************************************
Filename: E_fir_pe.h
Purpose : FPGA Emulated PE of Systolic FIR filter
Author  : goodkook@gmail.com
History : Mar. 2024, First release
***********************************************************************/

#ifndef _E_NCO_H_
#define _E_NCO_H_

#include <systemc.h>

// Includes for accessing Arduino via serial port
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>

SC_MODULE(E_nco)
{
    sc_in<bool>             clk;
	
    sc_in<bool>             En;
    sc_in<bool>            	selXY;
	sc_in<bool>            	selSign;
    sc_in<sc_uint<20>>      FCW;
	
	sc_out<bool>      		Vld;
    sc_out<sc_uint<12> >    Dout;

#define N_TX    3
#define N_RX    2

    void e_nco_method(void)
    {
        uint8_t     x, y, txPacket[N_TX], rxPacket[N_RX];
		uint32_t	_Dout;
		uint32_t	_FCW;
		
        while(true)
        {
            // Positive edge Clock
            wait(clk.posedge_event());
			_FCW = FCW.read();
			
            txPacket[0] = (uint8_t)(clk.read()? 1:0) << 7 | // clk|En|selxy|selS|FCW[19]|[18]|[17]|[16]
						  (uint8_t)(En.read()? 1:0	) << 6 | 
						  (uint8_t)(selXY.read()? 1:0) << 5 |
						  (uint8_t)(selSign.read()? 1:0) << 4 |
						  (uint8_t)(_FCW >> 16	);
            txPacket[1] = (uint8_t)(_FCW >> 8	);	//FCW[15][14][13][12]_[11][10][9][8]
            txPacket[2] = (uint8_t)(_FCW		);	//FCW[7][6][5][4]_[3][2][1][0]
            // Send to Emulator
            for (int i=0; i<N_TX; i++)
            {
                x = txPacket[i];
                while(write(fd, &x, 1)<=0)  usleep(1);
            }
            // Receive from Emulator
            for (int i=0; i<N_RX; i++)
            {
                while(read(fd, &y, 1)<=0)   usleep(1);
                rxPacket[i] = y;
            }
			
			_Dout = uint32_t(((rxPacket[0] & 0x0F) << 8)) | uint32_t(rxPacket[1] );
			Vld.write((rxPacket[0] & 0x80)?1:0);
            Dout.write((sc_uint<12>)_Dout);
			//rxPacket[1] 			 	| rxPacket[0]
			//[ Vld|_|_|_|Dout[11:8] ]	| [ Dout[7:0] ]
			
			wait(clk.negedge_event());
			_FCW = FCW.read();
			
            txPacket[0] = (uint8_t)(clk.read()? 1:0) << 7 | // clk|En|sel|x|FCW[19]|[18]|[17]|[16]
						  (uint8_t)(En.read()? 1:0	) << 6 | 
						  (uint8_t)(selXY.read()? 1:0) << 5 | 
						  (uint8_t)(selSign.read()? 1:0) << 4 |
						  (uint8_t)(_FCW >> 16	);
            txPacket[1] = (uint8_t)(_FCW >> 8	);	//FCW[15][14][13][12]_[11][10][9][8]
            txPacket[2] = (uint8_t)(_FCW		);	//FCW[7][6][5][4]_[3][2][1][0]
            // Send to Emulator
            for (int i=0; i<N_TX; i++)
            {
                x = txPacket[i];
                while(write(fd, &x, 1)<=0)  usleep(1);
            }
            // Receive from Emulator
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

    SC_CTOR(E_nco):
        clk("clk"),
        En("En"), selXY("selXY"), FCW("FCW"),
        Dout("Dout"), Vld("Vld")
    {
        SC_THREAD(e_nco_method);
        sensitive << clk;

        // Arduino DUT
        //fd = open("/dev/ttyACM0", O_RDWR | O_NDELAY | O_NOCTTY);
        fd = open("/dev/ttyACM0", O_RDWR | O_NOCTTY);
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
    
    ~E_nco(void)
    {
    }
};

#endif
