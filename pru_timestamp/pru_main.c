//Ron Ocampo
//Dinggao Pan
//HW2 EEM202A


//pru timestamp based on measure_time_sync example

/*
 * Copyright (c) Regents of the University of California, 2017. All rights reserved.
 * See LICENSE and ATTRIB in the repository root.
 */

/*
 * Based on code from Derek Molloy for the book "Exploring BeagleBone:
 * Tools and Techniques for Building with Embedded Linux" by John Wiley & Sons, * 2014 ISBN 9781118935125. Please see the file ATTRIB in the repository root * directory for copyright and GNU GPLv3 license information.
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
#define SYNC_PERIOD_NS 8000000000

void
terminate()
{
    TRIG_INTC(4); // Trigger interrupt PRUEVENT_1
    __halt(); // halt the PRU
}

int num_samples = 8000;
int input_high = 0;

void check_input_pin(struct iep_time *time, struct rbuffer *send_buf)
{
    if (!input_high) {
        if (read_pin(P8_45)) {
            input_high = 1;
            // Send current pru time back to host for printing
            rbuf_write_uint64(send_buf, iep_get_time(time));
            // Interrupt the host: there is a message in the rbuffer
            TRIG_INTC(3); // Trigger interrupt PRUEVENT_0
        }
    } else {
        if (!read_pin(P8_45)) {
            input_high = 0;
        }
    }
} 

int main()
{
    // Wait enough time for host to startup
    WAIT_MS(1000);

    // Send PRU time back to host for printing
    struct rbuffer *send_buf =
        (struct rbuffer *) (uint32_t) (SHARED_MEM_BASE);
    init_rbuffer(send_buf);

    // Required for getting host timestamp
    struct rbuffer *rec_buf =
        (struct rbuffer *) (uint32_t) (SHARED_MEM_BASE
                + sizeof(struct rbuffer));

    // IEP is our clock source
    struct iep_time time;
    init_iep_time(&time);

    short status = -1;

    while(1) {
		//if received sigint from host terminate
		if (rbuf_read_uint64(rec_buf, &status)) {
			DISABLE_IEP_TMR();
			terminate();
		}
	
        check_input_pin(&time, send_buf);
		
    }	
}

