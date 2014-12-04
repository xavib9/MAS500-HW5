//
//  unix2003.c
//  mySketch
//
//  Created by Xavier Benavides Palos on 03/12/14.
//
//

#include "unix2003.h"
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <stdlib.h>

size_t fwrite$UNIX2003( const void *a, size_t b, size_t c, FILE *d )
{
    return fwrite(a, b, c, d);
}
char* strerror$UNIX2003( int errnum )
{
    return strerror(errnum);
}
time_t mktime$UNIX2003(struct tm * a)
{
    return mktime(a);
}
double strtod$UNIX2003(const char * a, char ** b) {
    return strtod(a, b);
}