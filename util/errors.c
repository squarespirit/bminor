#include "errors.h"
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>

void fatal(const char *format, ...) {
    va_list argList;
    va_start(argList, format);
    vfprintf(stderr, format, argList);
    va_end(argList);
    fputc('\n', stderr);
    exit(1);
}
