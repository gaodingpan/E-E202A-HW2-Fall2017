// Ron Ocampo
// Dinggao Pan
// HW2
// EEM202A


#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include <fcntl.h>
#include <time.h>
#include <string.h>
#include <sys/ioctl.h>
#include <unistd.h>

#include <linux/ptp_clock.h>

#define PTPCHN1 "/dev/ptp1"

#define CONFIGPIN "\
#/bin/bash \n\
config-pin overlay cape-universala\n\
config-pin P8_10 timer\n\
"
#define LOADPTP "\
#/bin/bash \n\
capes\n\
capes BBB-AM335X\n\
capes\n\
"


int fd, cnt, start;
long secdiff, nsecdiff;
long double currentStamp;
FILE *output;
struct ptp_extts_event extts_event;
struct ptp_extts_event init_extts_event;
struct ptp_extts_request extts_request;


void sigintHandler(int sig_num)
{
	
	printf("\nTerminating \n");
    // Closing the ptp1 channel
	extts_request.flags = 0;
	if (ioctl(fd, PTP_EXTTS_REQUEST, &extts_request)) {
		perror("PTP_EXTTS_REQUEST");
	}
	close(fd);
	fclose(output);
	fprintf(stdout, "I am done.\n");
	exit(0);
}

int main(int argc, char *argv[])
{
  if(argc != 2)
  {
    fprintf(stderr, "Insufficient arguments. hw2_ptpTimestamp path/output.txt \n");
    return -1;
  }
  fd = open(PTPCHN1, O_RDWR);
  if (fd <0) {
    system(LOADPTP);
  }
  while(fd < 0)
  {
    fd = open(PTPCHN1, O_RDWR);
  }

//  system(CONFIGPIN);
  signal(SIGINT, sigintHandler);
  
  output = fopen(argv[1], "w");
  start = 1;
  memset(&extts_request, 0, sizeof(extts_request));
  extts_request.index = 1;
  extts_request.flags = PTP_ENABLE_FEATURE | PTP_RISING_EDGE;
  
  if (ioctl(fd, PTP_EXTTS_REQUEST, &extts_request)) {
    perror("PTP_EXTTS_REQUEST");
  } else {
    fprintf(stdout, "Ready for inputs!\n");
  }
  
  while(1)
  {
	if (start) {
		read(fd, &init_extts_event, sizeof(init_extts_event));
		extts_event = init_extts_event;
    fprintf(output, "%Lf\n", (long double)0);
		start = 0;
	} else {	
		read(fd, &extts_event, sizeof(extts_event));  
    secdiff = extts_event.t.sec - init_extts_event.t.sec;
    nsecdiff = extts_event.t.nsec - init_extts_event.t.nsec - 1000;
    currentStamp = ((long double) secdiff + nsecdiff / 1000000000.0);
    fprintf(output, "%Lf\n", currentStamp);
	}
  
  }
  return 0;
}