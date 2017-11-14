#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include <fcntl.h>
#include <time.h>
#include <string.h>
#include <sys/ioctl.h>

#include <linux/ptp_clock.h>

#define PTPCHN1 "/dev/ptp1"
#define CONFIGPIN "\
#/bin/bash \n\
config-pin overlay cape-universala\n\
config-pin P8_10 timer\n\
"

int fd, cnt, start;
struct ptp_clock_caps caps;
struct ptp_extts_event extts_event;
struct ptp_extts_event init_extts_event;
struct ptp_extts_request extts_request;

int main(int argc, char *charv[])
{
  system(CONFIGPIN);
  
  fd = open(PTPCHN1, O_RDWR);
  if(fd < 0)
  {
    perror("ptp1");
  }
  start = 1;
  memset(&extts_request, 0, sizeof(extts_request));
  extts_request.index = 1;
  extts_request.flags = PTP_ENABLE_FEATURE | PTP_RISING_EDGE;
  
  if (ioctl(fd, PTP_EXTTS_REQUEST, &extts_request)) {
    perror("PTP_EXTTS_REQUEST");
  } else {
    fprintf(stdout, "Request successful!\n");
  }
  int i;
  for(i = 0; i < 20; i++) {
  if (start) {
    read(fd, &init_extts_event, sizeof(init_extts_event));
    start = 0;
  }
	read(fd, &extts_event, sizeof(extts_event));
  fprintf(stdout, "Event Channel:%d, Event timestamp: %lld.%09u\n", extts_event.index, 
          extts_event.t.sec - init_extts_event.t.sec, extts_event.t.nsec - init_extts_event.t.nsec);
  
  }
  // Closing the ptp1 channel
  extts_request.flags = 0;
  ioctl(fd, PTP_EXTTS_REQUEST, &extts_request);
  close(fd);

  fprintf(stdout, "I am done.\n");
  return 0;
}