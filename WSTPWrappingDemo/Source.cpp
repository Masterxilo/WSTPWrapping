#include <stdio.h>
#include <sal.h>
#define WL_WSTP_MAIN
#define WL_ALLOC_CONSOLE
#include <paulwl.h>

void print(_In_z_ const char* const string) {
    printf("%s\n", string);
}
