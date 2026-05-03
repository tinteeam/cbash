#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

int main() {
    char cmd[256];

    printf("welcome to tinos linux edtion\n");

    printf("type chelp to get started using the custom commands\n");

    while (1) {
        printf("cbash> ");

        scanf("%s", cmd);

        if (strcmp(cmd, "chelp") == 0) {
            chelp();
        } else if (strcmp(cmd, "tinver") == 0) {
            tinver();
        } else if (strcmp(cmd, "cver") == 0) {
            cver();
        } else if (strcmp(cmd, "exit") == 0) {
            printf("goodbye!\n");
            break;
        } else {
            printf("unknown command: %s\n", cmd);
        }
    }
    
    return 0;
}
