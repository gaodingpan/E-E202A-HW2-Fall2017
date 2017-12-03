// Ron Ocampo, Dinggao Pan
// HW2 PRU
// 11/28/2017


/*
 * Copyright (c) Regents of the University of California, 2017. All rights rese$
 * See LICENSE and ATTRIB in the repository root.
 */

/*
 * Based on code from Derek Molloy for the book "Exploring BeagleBone:
 * Tools and Techniques for Building with Embedded Linux" by John Wiley & Sons,$
 */

#include "nesl_pru_intc.h"
#include "nesl_pru_iep.h"
#include "nesl_pru_wait.h"
#include "nesl_pru_rbuffer.h"
#include "nesl_pru_gpio.h"
#include <stdint.h>
<<<<<<< HEAD

int main()
{
    struct rbuffer *rbuf = (struct rbuffer *) (uint32_t) 0x10000;
    init_rbuffer(rbuf);
	uint32_t waitTime = 0;
	int curCycle = 0;
=======
#include <stdlib.h>

#define SHARED_MEM_BASE 0x10000

uint64_t curTime, prevTime;
int first = 1;

void
terminate()
{
	deassert_pin(P8_46);
    TRIG_INTC(4); // Trigger interrupt PRUEVENT_1
    __halt(); // halt the PRU
}

int main()
{

	// Wait enough time for host to startup
    WAIT_MS(1000);

    /*
    // Send message from PRU to host
    struct rbuffer *send_buf = (struct rbuffer *) (uint32_t) (SHARED_MEM_BASE);
    init_rbuffer(send_buf);
	*/

	//	Receive timestamp from host to PRU
	struct rbuffer *rec_buf = (struct rbuffer *) (uint32_t) (SHARED_MEM_BASE);

    //  Receive buffer from host to PRU
    struct rbuffer *terminate_buf = (struct rbuffer *) (uint32_t) (SHARED_MEM_BASE + sizeof(struct rbuffer));

    struct iep_time time;
    init_iep_time(&time);

	uint32_t waitTime = 0;
	//int curCycle = 0;

	short status = -1;
>>>>>>> parent of 5a804e7... clean up

    while(1) {
        waitTime = rbuf_read_uint32(rbuf, 0);
		if(waitTime < 0)// Oringinally for breaking out of the loop, should use the com in new example you used
		{
			break;
		}
		while(curCycle < waitTime / 2) {
			curCycle += 3;//while loop is around 2 cycles, the addition counts for 1
		}
		//WAIT_CYCLES((int)waitTime);
        TRIG_INTC(3); // Trigger interrupt PRUEVENT_0 for update of next waitTime
		while(curCycle < waitTime) {
			curCycle += 3;//while loop is around 2 cycles, the addition counts for 1
		}
        //WAIT_CYCLES((int)waitTime - 3);
		toggle_pin(P9_27);
		WAIT_CYCLES(98);
		toggle_pin(P9_27);//combined 100ms pulse
		curCycle = 0;
    }

<<<<<<< HEAD

    // Exiting the application - send the interrupt
    TRIG_INTC(4); // Trigger interrupt PRUEVENT_1
    __halt(); // halt the PRU
}

=======
		waitTime = rbuf_read_uint64(rec_buf, &status);
		//if you received a new waitTime
		if(waitTime != 0) {
			//toggle pin for 50us
>>>>>>> parent of 5a804e7... clean up


<<<<<<< HEAD
=======
			//spin until it is time for the next pulse
			while((curTime - prevTime) < waitTime) {
				curTime = iep_get_time(&time);
			}
>>>>>>> parent of 5a804e7... clean up



<<<<<<< HEAD
=======
			//ready for new wait time
		}

    	/*
        waitTime = rbuf_read_uint32(rec_buf, &status);
		if(waitTime < 0)// Oringinally for breaking out of the loop, should use the com in new example you used
		{
			break;
		}
		while(curCycle < waitTime / 2) {
			curCycle += 3;//while loop is around 2 cycles, the addition counts for 1
		}
		//WAIT_CYCLES((int)waitTime);
        TRIG_INTC(3); // Trigger interrupt PRUEVENT_0 for update of next waitTime
		while(curCycle < waitTime) {
			curCycle += 3;//while loop is around 2 cycles, the addition counts for 1
		}
        //WAIT_CYCLES((int)waitTime - 3);
		toggle_pin(P8_46);
		WAIT_CYCLES(98);
		toggle_pin(P8_46);//combined 100ms pulse
		curCycle = 0;
		*/
    }
}
>>>>>>> parent of 5a804e7... clean up
