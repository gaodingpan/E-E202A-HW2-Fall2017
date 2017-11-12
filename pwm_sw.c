// Ron Ocampo
// Dinggao Pan
// 11/10/2017
// HW2 SW PWM w/o ptp

#include <time.h>
#include <stdio.h>
#include <signal.h>
#include <stdlib.h>
#include <stdint.h>
#include <unistd.h>

#define  PULSELEN 1000000
#define  TONANO 1000000000

struct timespec starttime, testStart, testEnd;
FILE *infileptr;
FILE *exportfileptr;
FILE *gpiodirectionptr;
FILE *gpioedgeptr;
FILE *outputValue;

void pulse();
void waiting(uint64_t interval);
double TimeSpecToNano(struct timespec* ts);

//handle cntrl+c
void sigintHandler(int sig_num)
{
	printf("\nTerminating... \n");
	exit(0);
}



int main(int argc, char *argv[])
{

	//check that path is given
	if (argc!=2)
	{
		printf("Please enter the path of input file\n");
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
	fprintf(exportfileptr, "39"); //pin4 on header P8 gpio1[7]
	fclose(exportfileptr);

	//configure pin as output
	gpiodirectionptr = fopen("/sys/class/gpio/gpio39/direction", "w");
	fprintf(gpiodirectionptr, "out");
	fclose(gpiodirectionptr);

	printf("entering while loop\n");

  //get start time
  printf("try to get times\n");
  long double waitTime, timestamp, tsPrev, tsNano, startNano; 
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
      clock_gettime(CLOCK_MONOTONIC, &testEnd);
      printf("Current timestamp = %Lf \n", timestamp);
      printf("Real Timestamp = %Lf, \n", (TimeSpecToNano(&testEnd) - startNano)/TONANO);
    }

    pulse();

    tsPrev = timestamp;
    fscanf(infileptr, "%Lf", &timestamp);
	}
  fclose(infileptr);
  
  exportfileptr = fopen("/sys/class/gpio/unexport", "w");
	fprintf(exportfileptr, "39"); //pin4 on header P8 gpio1[7]
	fclose(exportfileptr);
  	
	fprintf(stdout, "Done\n");
	return 0;
}

void pulse()
{
  outputValue = fopen("/sys/class/gpio/gpio39/value", "w");
  fprintf(outputValue, "1");
  usleep((uint64_t)1000);
  fprintf(outputValue, "0");
  fclose(outputValue);
}

double TimeSpecToNano(struct timespec* ts)
{
    return (long double)ts->tv_sec * 1000000000.0 + (long double)ts->tv_nsec;
}
