// Ron Ocampo, Dinggao Pan
// HW2 PRU Pulse Gen
// 11/28/2017

/*
 * Copyright (c) Regents of the University of California, 2017. All rights rese$
 * See LICENSE and ATTRIB in the repository root.
 */

/*
 * Based on code from Derek Molloy for the book "Exploring BeagleBone:
 * Tools and Techniques for Building with Embedded Linux" by John Wiley & Sons,
 * 2014 ISBN 9781118935125. Please see the file ATTRIB in the repository root
 * directory for copyright and GNU GPLv3 license information.
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <pthread.h>
#include <prussdrv.h>
#include <pruss_intc_mapping.h>

#define ERROR 0 //static error for passing the variable to pru;

volatile int stop = 0;
volatile uint8_t *shared_mem;
double curTimeStamp, prevTimeStamp;
uint32_t waitTime;
FILE *inputPtr;

uint32_t calculateWait(double curTimeStamp, double prevTimeStamp)
{
	return (((curTimeStamp - prevTimeStamp) * 200000000 - 20000000 - ERROR) / 2);
}

void *threadFunction(void *value){
    do {
        prussdrv_pru_wait_event(PRU_EVTOUT_0);
        prussdrv_pru_clear_event(PRU_EVTOUT_0, PRU0_ARM_INTERRUPT);
        struct rbuffer *rbuf = (struct rbuffer *) shared_mem;
		while((curTimeStamp - prevTimeStamp < 100)){ 
			fscanf();
		} 
		waitTime = calculateWait(curTimeStamp, prevTimeStamp);
		rbuf_write_uint32(rbuf, &waitTime);
		prevTimeStamp = curTimeStamp;
		fscanf();
    } while (curTimeStamp != prevTimeStamp);
	prussdrv_pru_wait_event(PRU_EVTOUT_0);
    prussdrv_pru_clear_event(PRU_EVTOUT_0, PRU0_ARM_INTERRUPT);
    struct rbuffer *rbuf = (struct rbuffer *) shared_mem;
	rbuf_write_uint32(rbuf, -1);
	
}

int main (int argc, char *argv[])
{
	if(argc != 2) {
		fprintf(stderr, "Invalid number of inputs. Please Specify the input file!\n");
		return -1;
	}
	int n, ret;
	
	if (getuid() != 0)
	{
		printf("You must run this program as root. Exiting.\n");
		exit(EXIT_FAILURE);
	}
	
	inputPtr = fopen(argv[1], "r");
	if(inputPtr == NULL)
	{
		fprintf(stderr, "Input file %s does not exists.", argv[1]);
		fclose(inputPtr);
		return -1;
	}
	
    pthread_t thread;

    /* Initialize structure used by prussdrv_pruintc_intc   */
    /* PRUSS_INTC_INITDATA is found in pruss_intc_mapping.h */
    tpruss_intc_initdata pruss_intc_initdata = PRUSS_INTC_INITDATA;

    /* Allocate and initialize memory */
    prussdrv_init ();
    ret = prussdrv_open (PRU_EVTOUT_0);
    if(ret){
        printf("Failed to open the PRU-ICSS, have you loaded the overlay?");
        exit(EXIT_FAILURE);
    }
    ret = prussdrv_open (PRU_EVTOUT_1);
    if(ret){
        printf("Failed to open the PRU-ICSS, have you loaded the overlay?");
        exit(EXIT_FAILURE);
    }

	/* Map PRU's INTC */
	prussdrv_pruintc_int(&pruss_intc_initdata);
	
	// Map PRU's shared memory into user-space
	if (prussdrv_map_prumem(PRUSS0_SHARED_DATARAM, (void**) &shared_mem))
	{
		printf("map shared memory failed\n");
		exit(EXIT_FAILURE);
	}
	
	memset((void*) shared_mem, 0, 0x2000);
	

    /* Load the memory data file */
    prussdrv_load_datafile(PRU_NUM, "./data.bin");

    /* Load and execute binary on PRU */
    prussdrv_exec_program (PRU_NUM, "./text.bin");

    /* Wait for event completion from PRU */
    if (pthread_create(&thread, NULL, &threadFunction, NULL)){
        printf("Failed to create thread!\n");
        exit(EXIT_FAILURE);
    }

    prussdrv_pru_wait_event(PRU_EVTOUT_1);

    /* Disable PRU and close memory mappings */
    prussdrv_pru_disable(PRU_NUM);
    prussdrv_exit ();
    return(EXIT_SUCCESS);
	
}
