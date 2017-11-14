#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include <fcntl.h>
#include <time.h>

#include <linux/ptp_clock.h>

#define PTPCHN1 "/dev/ptp1"
#define TSFLAGS PTP_ENABLE_FEATURE | PTP_RISING_EDGE;

int fd;
struct ptp_extts_event event;
struct ptp_extts_request extts_request;

int main(int argc, char *charv[])
{
  fd = open(PTPCHN1, O_RDWR);
  if(fd < 0)
  {
    fprintf(stderr, "ptp device not correctly loaded");
    return -1;
  }
  
    memset(&extts_request, 0, sizeof(extts_request));
    extts_request.index = 0;
    extts_request.flags = TSFLAGS;
    if (ioctl(fd, PTP_EXTTS_REQUEST, &extts_request)) {
      fprintf(stderr, "PTP_EXTTS_REQUEST failed");
    } else {
      fprintf(stdout, "Request successful!");
    }
    
    // Closing the ptp1 channel
    extts_request.flags = 0;
    ioctl(fd, PTP_EXTTS_REQUEST, &extts_request);
    
    //read(fd, &event);
    
  close(fd);
  fprintf(stdout, "I am done.");
  return 0;
}