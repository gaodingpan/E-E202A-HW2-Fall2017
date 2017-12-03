// Ron Ocampo, Dinggao Pan
// HW2 PRU Pulse Gen
// 12/3/2017

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

#include <errno.h>
#include <fcntl.h>
#include <inttypes.h>
#include <math.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/ioctl.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <time.h>
#include <unistd.h>
#include <pthread.h>
#include <prussdrv.h>
#include <pruss_intc_mapping.h>

#include "nesl_pru_rbuffer.h"

#define ERROR 0 //static error for passing the variable to pru;

volatile int stop = 0;
volatile uint8_t *shared_mem;
struct rbuffer *terminate_pru_rbuffer;
struct rbuffer *send_to_pru_rbuffer;
//struct rbuffer *receive_from_pru_rbuffer;

int first = 1;
double curTimeStamp, prevTimeStamp;
uint64_t waitTime;
FILE *inputPtr;


// Handles cntrl+C
void sigintHandler(int sig_num)
{
	printf("\nTerminating \n");
	stop = 1;
	
	//close intput file
	fclose(inputPtr);
	
	//close PRU
	//buffer value 1 means terminate
    rbuf_write_uint64(terminate_pru_rbuffer, 1);
	printf("pru terminate\n");
	
	prussdrv_pru_disable(PRU_NUM);
    prussdrv_exit ();

	exit(0);
}

void nomoreinputs() {
	printf("\nno more inputs \n");
	stop = 1;
	
	//close PRU
	//buffer value 1 means terminate
    rbuf_write_uint64(terminate_pru_rbuffer, 1);
	printf("pru terminate\n");
	
	prussdrv_pru_disable(PRU_NUM);
    prussdrv_exit ();

	exit(0);
}

/*
uint32_t calculateWait(double curTimeStamp, double prevTimeStamp)
{
	return (((curTimeStamp - prevTimeStamp) * 200000000 - 20000000 - ERROR) / 2);
}
*/

void *receive_pru_thread(void *value){
/*
    do {
        prussdrv_pru_wait_event(PRU_EVTOUT_0);
        prussdrv_pru_clear_event(PRU_EVTOUT_0, PRU0_ARM_INTERRUPT);
        struct rbuffer *rbuf = (struct rbuffer *) shared_mem;
		while((curTimeStamp - prevTimeStamp < 100)){ 
			//fscanf();
		} 
		//waitTime = calculateWait(curTimeStamp, prevTimeStamp);
		rbuf_write_uint64(send_to_pru_rbuffer, waitTime);
		prevTimeStamp = curTimeStamp;
		//fscanf();
    } while (curTimeStamp != prevTimeStamp);
	prussdrv_pru_wait_event(PRU_EVTOUT_0);
    prussdrv_pru_clear_event(PRU_EVTOUT_0, PRU0_ARM_INTERRUPT);
    struct rbuffer *rbuf = (struct rbuffer *) shared_mem;
	rbuf_write_uint64(send_to_pru_rbuffer, -1);
*/	
}

// Handles sending to PRU
void *send_pru_thread(void *value)
{
	printf("started send thread\n");
    int err = 0;
    //uint64_t nano_ts;
    //int i = 1;

    while (!stop) {

    	//scan input and get current time
    	if (EOF == fscanf(inputPtr, "%lf", &curTimeStamp))
    	{
    		//no more inputs quit
    		nomoreinputs();
    	}

    	//printf("file scanned %lf\n", curTimeStamp);

    	if (first)
    	{
    		first = 0;
    		prevTimeStamp = curTimeStamp;
    		//scan again
    		fscanf(inputPtr, "%lf", &curTimeStamp);
    	}

    	waitTime = (curTimeStamp - prevTimeStamp)*1000000000;
    	rbuf_write_uint64(send_to_pru_rbuffer, waitTime);
    	// This call will block until PRU interrupts the host
    	//waits until PRU has read buffer before putting a new value
        prussdrv_pru_wait_event(PRU_EVTOUT_0);
        prussdrv_pru_clear_event(PRU_EVTOUT_0, PRU0_ARM_INTERRUPT);

        prevTimeStamp = curTimeStamp;
    }
}

int main(int argc, char *argv[])
{

    int err;

    if(getuid()!=0){
        printf("You must run this program as root. Exiting.\n");
        exit(EXIT_FAILURE);
    }
	
	//check that path is given
	if (argc!=5)
	{
		printf("invalid number of arguments\n");
		printf("Usage: ./host data.bin text.bin blank.txt input/file/path.txt\n");
		exit (-1);
	}
	
	//open file for writing
	inputPtr = fopen(argv[4], "r");
	
	//init sigint handler
	signal(SIGINT, sigintHandler);
	
    pthread_t thread;
    pthread_t thread2;

    /* Initialize structure used by prussdrv_pruintc_intc   */
    /* PRUSS_INTC_INITDATA is found in pruss_intc_mapping.h */
    tpruss_intc_initdata pruss_intc_initdata = PRUSS_INTC_INITDATA;

    /* Initialize PRUSS (PRU Sub-System Driver) */
    prussdrv_init();

    // PRU_EVTOUT_0 - interrupt generated by PRU to indicate that it has
    // sent messages to the host. Pending messages are in the
    // receive_from_pru_rbuffer.
    err = prussdrv_open (PRU_EVTOUT_0);
    if(err){
        printf("Failed to open the PRU-ICSS, have you loaded the overlay?");
        exit(EXIT_FAILURE);
    }

    // PRU_EVTOUT_1 - interrupt generated by PRU to indicate that is is
    // going to halt.
    err = prussdrv_open (PRU_EVTOUT_1);
    if(err){
        printf("Failed to open the PRU-ICSS, have you loaded the overlay?");
        exit(EXIT_FAILURE);
    }

    /* Map PRU's INTC */
    prussdrv_pruintc_init(&pruss_intc_initdata);

    // Map PRU's shared memory into user-space
    if (prussdrv_map_prumem(PRUSS0_SHARED_DATARAM, (void **) &shared_mem)) {
        printf("map shared memory failed\n");
        exit(EXIT_FAILURE);
    }

    // Clear 12Kb of shared memory
    memset((void*) shared_mem, 0, 0x3000);

    // Setup buffers for communication between host and PRU

    // Only the sender initializes the rbuffer.
    // PRU will initialize this buffer. Host should NOT initalize this.
    //receive_from_pru_rbuffer = (struct rbuffer *) (shared_mem);

    send_to_pru_rbuffer = (struct rbuffer *) (shared_mem);
    init_rbuffer(send_to_pru_rbuffer);

    terminate_pru_rbuffer = (struct rbuffer *) (shared_mem + sizeof(struct rbuffer));
    init_rbuffer(terminate_pru_rbuffer);

    /* Load the memory data file */
    prussdrv_load_datafile(PRU_NUM, argv[1]);

    /* Load and execute binary on PRU */
    prussdrv_exec_program (PRU_NUM, argv[2]);

    /* Thread for handling message from the PRU */
    if (pthread_create(&thread, NULL, &receive_pru_thread, NULL)){
        printf("Failed to create thread!\n");
        exit(EXIT_FAILURE);
    }

    /* Thread for handling messages sent to the PRU */
    if (pthread_create(&thread2, NULL, &send_pru_thread, NULL)){
        printf("Failed to create thread!\n");
        exit(EXIT_FAILURE);
    }
	
	printf("ready for inputs\n");

    /* Wait for event completion from PRU */
    // This call will block until PRU interrupts the host.
    prussdrv_pru_wait_event(PRU_EVTOUT_1);
    stop = 1;

    fclose(inputPtr);
	
    /* Disable PRU and close memory mappings */
    prussdrv_pru_disable(PRU_NUM);
    prussdrv_exit ();
    return(EXIT_SUCCESS);
}
