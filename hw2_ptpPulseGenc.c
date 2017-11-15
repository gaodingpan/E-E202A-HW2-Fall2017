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
config-pin P8_8 timer\n\
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
FILE *input;
//struct ptp_time init_event, curr_event;
struct ptp_perout_request perout_request;
struct timespec ts;
clockid_t clkid;

static clockid_t get_clockid(int fd)
{
#define CLOCKFD 3
#define FD_TO_CLOCKID(fd)	((~(clockid_t) (fd) << 3) | CLOCKFD)

	return FD_TO_CLOCKID(fd);
}

void cleanQuit() 
{
  printf("\nTerminating \n");
  // Closing the ptp1 channel
	perout_request.period.sec = 0;
	perout_request.period.nsec = 0;
	if (ioctl(fd, PTP_PEROUT_REQUEST, &perout_request)) {
		perror("PTP_PEROUT_REQUEST");
	}
	close(fd);
	fclose(input);
	fprintf(stdout, "I am done.\n");
}

void sigintHandler(int sig_num)
{
	cleanQuit();
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

  system(CONFIGPIN);
  signal(SIGINT, sigintHandler);
  
  input = fopen(argv[1], "rw");
  
  clkid = get_clockid(fd);
  if (clkid == -1) {
		fprintf(stderr, "failed to read clock id\n");
		return -1;
	}
  
  memset(&perout_request, 0, sizeof(perout_request));
  perout_request.index = 1;
  clock_gettime(clkid, &ts);
  perout_request.start.sec = ts.tv_sec + 2;
  perout_request.start.nsec = 0;
  perout_request.period.sec = 0;
  perout_request.period.nsec = 1000000;
  
  if (ioctl(fd, PTP_PEROUT_REQUEST, &perout_request)) {
    perror("PTP_PEROUT_REQUEST");
  } else {
    fprintf(stdout, "Ready for inputs!\n");
  }
  
  while(1)
  {

	}

//secdiff = extts_event.t.sec - init_extts_event.t.sec;
//	nsecdiff = extts_event.t.nsec - init_extts_event.t.nsec;
	currentStamp = ((long double) secdiff + nsecdiff / 1000000000.0);
  cleanQuit();
  return 0;
}