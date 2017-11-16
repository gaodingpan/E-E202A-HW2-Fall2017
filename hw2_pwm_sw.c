// Ron Ocampo
// Dinggao Pan
// 11/10/2017
// HW2 SW PWM w/o ptp

#include <time.h>
#include <stdio.h>
#include <signal.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <unistd.h>

#define  PULSELEN 1000000
#define  TONANO 1000000000
#define CONFIGPIN "\
#/bin/bash \n\
config-pin overlay cape-universala\n\
config-pin P9_23 gpio\n\
"
struct timespec starttime, testStart, testEnd;
FILE *infileptr;
FILE *exportfileptr;
FILE *gpiodirectionptr;
FILE *gpioedgeptr;
FILE *outputValue;

void pulse();
double TimeSpecToNano(struct timespec* ts);

//handle cntrl+c
void sigintHandler(int sig_num)
{
	fprintf(stdout, "\nTerminating... \n");
  fclose(infileptr);
  system("echo 0 > /sys/class/gpio/gpio49/value");
  exportfileptr = fopen("/sys/class/gpio/unexport", "w");
	fprintf(exportfileptr, "49");
	fclose(exportfileptr);
  	
	fprintf(stdout, "Done\n");
	exit(0);
}



int main(int argc, char *argv[])
{

	//check that path is given
	if (argc!=2)
	{
		fprintf(stderr, "Please enter the path of input file\n");
		exit (0);
	}

	//init handler
	signal(SIGINT, sigintHandler);

	//open file for reading initializing the line variable
	infileptr = fopen(argv[1], "r");
  //making sure the input file exists
  if (infileptr == NULL) 
  {
    fprintf(stderr, "File '%s' does not exist\n", argv[1]);
    exit(EXIT_FAILURE);
  }

	//open pin
	exportfileptr = fopen("/sys/class/gpio/export", "w");
	fprintf(exportfileptr, "49"); 
	fclose(exportfileptr);

	//configure pin as output
	gpiodirectionptr = fopen("/sys/class/gpio/gpio49/direction", "w");
	fprintf(gpiodirectionptr, "out");
	fclose(gpiodirectionptr);
  
  memset(&starttime, 0, sizeof(starttime));
  memset(&testStart, 0, sizeof(testStart));
  memset(&testEnd, 0, sizeof(testEnd));
	fprintf(stdout, "entering while loop\n");
  system(CONFIGPIN);
  //get start time
  printf("try to get times\n");
  long double waitTime, timestamp, tsPrev, tsNano, startNano; 
  tsPrev = -1;
  fscanf(infileptr, "%Lf", &timestamp);
	while(timestamp != tsPrev)
  {
    if (timestamp == 0)
    {
      clock_gettime(CLOCK_MONOTONIC, &starttime);
      startNano = TimeSpecToNano(&starttime);
    } else {
      clock_gettime(CLOCK_MONOTONIC, &testStart);
      tsNano = TimeSpecToNano(&testStart);
      waitTime = timestamp * TONANO + startNano - tsNano;
      usleep((uint64_t)waitTime / 1000);
   }

    system("echo 1 > /sys/class/gpio/gpio49/value");
    usleep(1000);
    system("echo 0 > /sys/class/gpio/gpio49/value");

    tsPrev = timestamp;
    fscanf(infileptr, "%Lf", &timestamp);
	}
  fclose(infileptr);
  
  exportfileptr = fopen("/sys/class/gpio/unexport", "w");
	fprintf(exportfileptr, "49");
	fclose(exportfileptr);
  	
	fprintf(stdout, "Done\n");
	return 0;
}

double TimeSpecToNano(struct timespec* ts)
{
    return (long double)ts->tv_sec * 1000000000.0 + (long double)ts->tv_nsec;
}
