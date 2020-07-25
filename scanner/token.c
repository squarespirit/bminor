#include "token.h"

#include <stdlib.h>

#include "util/errors.h"

char *token_names[] = {
    "EOF",
    "comment",
    "array",
    "boolean",
    "char",
    "else",
    "false",
    "for",
    "function",
    "if",
    "integer",
    "print",
    "return",
    "string",
    "true",
    "void",
    "while",
    "ident",

    "intlit",
    "charlit",
    "stringlit",
    
    "colon",
    "lbracket",
    "rbracket",
    "lparen",
    "rparen",
    "lbrace",
    "rbrace",
    
    "increment",
    "decrement",
    "not",
    "exponent",
    "add",
    "subtract",
    "multiply",
    "divide",
    "modulus",
    "lt",
    "le",
    "gt",
    "ge",
    "equals",
    "not_equals",
    "and",
    "or",
    "assign",
    "error",
};

char *token_str(token_t t) {
    if (t < TOKEN_EOF || t > TOKEN_ERROR) {
        fatal("Token %d out of range\n", t);
    }
    return token_names[t];
}
