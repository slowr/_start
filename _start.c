#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void __exit(void);
void __unknwon(void);
void __get_argc(int);
void __get_argv(char *);

int _argc, i=0;
char ** _argv;

void __get_argc(int argc){
    _argc = argc;
    _argv = (char **) malloc (argc * sizeof(char *));
}

void __get_argv(char *argv){
    _argv[i++] = strdup(argv);
}

void __unknown() {
}
