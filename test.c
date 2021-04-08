#include <stdio.h>

/*This is comment*/
void print_msg(char *msg) {
    printf("This is message: %s\n",msg);
}


int main(int argc, char *argv[]) {
    print_msg("Hello World.");
      return 0;
}
