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

int main()
{
    struct rbuffer *rbuf = (struct rbuffer *) (uint32_t) 0x10000;
    init_rbuffer(rbuf);
	uint32_t waitTime = 0;
	int curCycle = 0;

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


    // Exiting the application - send the interrupt
    TRIG_INTC(4); // Trigger interrupt PRUEVENT_1
    __halt(); // halt the PRU
}






