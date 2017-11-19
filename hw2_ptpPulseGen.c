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

#define PTP_PIN_SETFUNC    _IOW(PTP_CLK_MAGIC, 7, struct ptp_pin_desc)

#define FD_TO_CLOCKID(fd) ((~(clockid_t) (fd) << 3) | 3)
#ifndef CLOCK_INVALID
#define CLOCK_INVALID -1
#endif

#define LOADPTP "\
#/bin/bash \n\
capes\n\
capes BBB-AM335X\n\
capes\n\
"

clockid_t clkid;
int fd, cnt, start;
long double tsPrev, currentStamp, tsNano, curtsNano, waitNano;
FILE *input;
struct ptp_perout_request perout_request;
struct ptp_pin_desc desc;
struct timespec ts, curts;


struct ptp_pin_desc {
  char name[64];
  unsigned int index;
  unsigned int func;
  unsigned int chan;
  unsigned int rsv[5];
};

void cleanQuit() 
{
  fprintf(stdout, "Terminating...\n");
  //set2zero();
  desc.index = 2;
  desc.func = 0;              // '2' corresponds to periodic output
  desc.chan = 2;
  if (ioctl(fd, PTP_PIN_SETFUNC, &desc)) {
      printf("Disable pin func failed for %d\n", fd);
  }
	close(fd);
	fclose(input);
	printf("I am done.\n");
}

void sigintHandler(int sig_num)
{
	cleanQuit();
	exit(0);
}

long double TimeSpecToNano(struct timespec* ts)
{
    return (long double)ts->tv_sec * 1000000000.0 + (long double)ts->tv_nsec;
}

int main(int argc, char *argv[])
{
  if(argc != 2)
  {
    fprintf(stderr, "Insufficient arguments: hw2_ptpPulseGen path/input.txt \n");
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
  
  input = fopen(argv[1], "rw");
  if(input == NULL) {
    fprintf(stderr, "input file %s does not exist.", argv[1]);
  }
  //pulse();
  
  memset(&desc, 0, sizeof(desc));
  desc.index = 2;
  desc.func = 2;              // '2' corresponds to periodic output
  desc.chan = 2;
  if (ioctl(fd, PTP_PIN_SETFUNC, &desc)) {
      printf("Set pin func failed for %d\n", fd);
      exit(-1);
  }
  //printf("Set pin func successful for %d\n", fd);
  clkid = FD_TO_CLOCKID(fd);
  if (clkid == -1) {
		fprintf(stderr, "failed to read clock id\n");
		exit(-1);
	}
  
  memset(&perout_request, 0, sizeof(perout_request));
  perout_request.index = 2;
  if (clock_gettime(clkid, &ts)) {
    perror("clock_gettime");
    exit(-1);
  }
  perout_request.index = 2;
  perout_request.start.sec = ts.tv_sec + 3;
  perout_request.start.nsec = 0;
  perout_request.period.sec = 0;
  perout_request.period.nsec = 200000000;
  
  if (ioctl(fd, PTP_PEROUT_REQUEST, &perout_request)) {
    perror("PTP_PEROUT_REQUEST");
  } else {
    fprintf(stdout, "Ready for inputs!\n");
  }
  ts.tv_sec += 3;
  ts.tv_nsec = 100000000;
  tsPrev = -1;
  fscanf(input, "%Lf", &currentStamp);
  clock_gettime(clkid, &curts);
  while(TimeSpecToNano(&curts) < TimeSpecToNano(&ts))
  {
    clock_gettime(clkid, &curts);
  }
  while(currentStamp != tsPrev)
  {
    if(currentStamp != 0)
    {
      waitNano = (currentStamp -tsPrev) * 1000000000;
      clock_gettime(clkid, &curts);
      while(TimeSpecToNano(&curts) < (TimeSpecToNano(&ts) 
            + currentStamp * 1000000000 - waitNano))
      {
        clock_gettime(clkid, &curts);
      }
      perout_request.start.sec = curts.tv_sec;
      perout_request.start.nsec = curts.tv_nsec + waitNano - 100000000;
      if (perout_request.start.nsec > 1000000000) 
      {
        perout_request.start.nsec -= 1000000000;
        perout_request.start.sec++;
      }
      if (ioctl(fd, PTP_PEROUT_REQUEST, &perout_request)) {
        perror("PTP_PEROUT_REQUEST");
      }
    }
    tsPrev = currentStamp;
    fscanf(input, "%Lf", &currentStamp);
  }

  cleanQuit();
  return 0;
}