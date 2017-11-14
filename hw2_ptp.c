#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include <fcntl.h>
#include <time.h>

#include <linux/ptp_clock.h>

#define PTPCHN1 "/dev/ptp0"

int fd;

int main(int argc, char *charv[])
{
  fd = open(PTPCHN1, O_RDWR);
  if(fd < 0)
  {
    fprintf(stderr, "ptp device not correctly loaded");
    return -1;
  }
  
    
  
  return 0;
}