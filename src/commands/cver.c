#include <stdio.h>
#include <sys/utsname.h>
#include "cver.h"

void cver() {
    struct utsname info;

    if (uname(&info) == -1) {
        perror("uname");
        return;
    }

    printf("linux version: %s\n", info.release);
    printf("kernel build: %s\n", info.version);
    printf("arch: %s\n", info.machine);
    printf("tinos version: dev 0.0.1\n");
}
