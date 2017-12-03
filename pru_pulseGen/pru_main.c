// Ron Ocampo, Dinggao Pan
// HW2 PRU Pulse Gen
// 12/3/2017


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
#include "nesl_pru_ticks.h"
#include "nesl_pru_gpio.h"
#include <stdint.h>
#include <stdlib.h>

#define SHARED_MEM_BASE 0x10000

uint64_t curTime, prevTime;
uint64_t offset_ns = 8065;
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

    while(1) {
		//if received sigint from host terminate
		if (rbuf_read_uint64(terminate_buf, &status)) {
			DISABLE_IEP_TMR();
			terminate();
		}

		waitTime = rbuf_read_uint64(rec_buf, &status);
		//if you received a new waitTime
		if(waitTime != 0) {
			//toggle pin for 50us

			if(first) {
				first = 0;
				curTime = iep_get_time(&time);
				prevTime = curTime;
				assert_pin(P8_46);
				WAIT_US(50);
				deassert_pin(P8_46);
			}			

			//spin until it is time for the next pulse
			while((curTime - prevTime) < (waitTime + offset_ns)) {
				curTime = iep_get_time(&time);
			}

			//jump out of loop

			assert_pin(P8_46);
			WAIT_US(50);
			deassert_pin(P8_46);
			prevTime = curTime;
			TRIG_INTC(3); // Trigger interrupt PRUEVENT_0

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
