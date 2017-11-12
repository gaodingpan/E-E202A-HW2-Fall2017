//Ron Ocampo
//Dinggao Pan
//HW2 EEM202A
//this program uses clock_gettime to timestamp pulses on pin4 of header P8

#include <time.h>
#include <stdio.h>
#include <signal.h>
#include <stdlib.h>
#include <poll.h>
#include <unistd.h>
//#include <fcntl.h>

struct timespec starttime;
struct timespec eventtime;
struct pollfd fds[1];
FILE *outfileptr;
FILE *exportfileptr;
FILE *unexportfileptr;
FILE *gpiodirectionptr;
FILE *gpioedgeptr;
FILE *gpiovalueptr;
FILE *gpioactive;
int rc = 0;
int firstpulse = 0;
double timedifference = 0;


//handle cntrl+c
void sigintHandler(int sig_num)
{
	
	printf("\nTerminating \n");
	fclose(outfileptr);
	fclose(gpiovalueptr);

	unexportfileptr = fopen("/sys/class/gpio/unexport", "w");
	fprintf(unexportfileptr, "39");
	fclose(unexportfileptr);

	exit(0);
}



int main(int argc, char *argv[])
{

	//check that path is given
	if (argc!=2)
	{
		printf("invalid number of arguments\n");
		printf("Usage: hw2 output/file/path.txt\n");
		exit (-1);
	}

	//init handler
	signal(SIGINT, sigintHandler);

	//open file for writing
	outfileptr = fopen(argv[1], "w");
	
	//open pin
	exportfileptr = fopen("/sys/class/gpio/export", "w");
	fprintf(exportfileptr, "39"); //pin4 on header P8 gpio1[7]
	fclose(exportfileptr);

	//configure pin as input triggered on rising edge
	gpiodirectionptr = fopen("/sys/class/gpio/gpio39/direction", "w");
	fprintf(gpiodirectionptr, "in");
	fclose(gpiodirectionptr);
	gpioedgeptr = fopen("/sys/class/gpio/gpio39/edge", "w");
	fprintf(gpioedgeptr, "rising");
	fclose(gpioedgeptr);
	
	void *buffer[64];
	int clearreadbuff;

	printf("Waiting for pulses...\n");
	while(1)
	{

		gpiovalueptr = fopen("/sys/class/gpio/gpio39/value", "r");
		fds[0].fd = fileno(gpiovalueptr);
		fds[0].events = POLLPRI;
		clearreadbuff = read(fds[0].fd, buffer, 64); //need this for some reason or poll wont work
		rc = poll(fds, 1, -1);
		
		if (rc == 0)
		{
			printf("Should not timeout\n");

		}

		if (rc == 1)
		{
			if (firstpulse == 0)
			{
				firstpulse =1;
				fprintf(outfileptr, "%f\n", timedifference);
				clock_gettime(CLOCK_MONOTONIC, &starttime);
			}

			else
			{
				clock_gettime(CLOCK_MONOTONIC, &eventtime);
				long nsecdifference = eventtime.tv_nsec - starttime.tv_nsec;
				double secdifferece = difftime(eventtime.tv_sec, starttime.tv_sec);
				timedifference = secdifferece + (float)nsecdifference/1000000000.0;
				fprintf(outfileptr, "%f\n", timedifference);
			}

		}

		fclose(gpiovalueptr);
	}
	
	return 0;
}