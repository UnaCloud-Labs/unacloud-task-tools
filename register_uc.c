#include <stdio.h>
#include <stdlib.h>
#include <sched.h>
#include <unistd.h>
#include <getopt.h>
#include <errno.h>
#include <err.h>

#define SCHED_UNACLOUD 7

int main(int argc, char *argv[])
{

    struct sched_param sp;
    if (argc == 1)
        err(EXIT_FAILURE, "must pass process pid as parameter.");

    int pid = atoi(argv[1]);
    if (pid == 0) 
        err(EXIT_FAILURE, "wrong parameter. must pass process id as parameter.");

    printf("Changing scheduler: %s\nArg 1: %s\n", argv[0], argv[1]);
    if (sched_setscheduler(pid, SCHED_UNACLOUD, &sp) == -1)
        err(EXIT_FAILURE, "failed to set pid %d's policy", pid);
}
