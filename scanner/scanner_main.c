#include "token.h"
#include <stdio.h>

extern FILE *yyin;
extern int yylex();
extern char *yytext;

int main(int argc, char **argv) {
    if (argc != 2) {
        printf("Usage: %s [input file]\n", argv[0]);
        printf("Print tokens to stdout\n");
        return 1;
    }
    yyin = fopen(argv[1],"r");
    if(!yyin) {
        printf("could not open %s!\n", argv[1]);
        return 1;
    }
    while(1) {
        token_t t = yylex();
        if(t==TOKEN_EOF) break;
        printf("%s\t%s\n", token_str(t), yytext);
    }
}