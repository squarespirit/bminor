#ifndef TOKEN_H
#define TOKEN_H

typedef enum {
    TOKEN_EOF=0,
    TOKEN_COMMENT,

    // Keywords
    TOKEN_ARRAY,
    TOKEN_BOOLEAN,
    TOKEN_CHAR,
    TOKEN_ELSE,
    TOKEN_FALSE,
    TOKEN_FOR,
    TOKEN_FUNCTION,
    TOKEN_IF,
    TOKEN_INTEGER,
    TOKEN_PRINT,
    TOKEN_RETURN,
    TOKEN_STRING,
    TOKEN_TRUE,
    TOKEN_VOID,
    TOKEN_WHILE,

    TOKEN_IDENT,
    TOKEN_INT_LIT,
    TOKEN_CHAR_LIT,
    TOKEN_STRING_LIT,

    TOKEN_COLON,
    TOKEN_LBRACKET,
    TOKEN_RBRACKET,
    TOKEN_LPAREN,
    TOKEN_RPAREN,
    TOKEN_LBRACE,
    TOKEN_RBRACE,
    TOKEN_SEMI,
    
    TOKEN_INCREMENT,
    TOKEN_DECREMENT,
    TOKEN_NOT,
    TOKEN_EXPONENT,
    TOKEN_ADD,
    TOKEN_SUBTRACT, // also used for unary negation
    TOKEN_MULTIPLY,
    TOKEN_DIVIDE,
    TOKEN_MODULUS,
    TOKEN_LT,
    TOKEN_LE,
    TOKEN_GT,
    TOKEN_GE,
    TOKEN_EQUALS,
    TOKEN_NOT_EQUALS,
    TOKEN_AND,
    TOKEN_OR,
    TOKEN_ASSIGN,

    TOKEN_ERROR
} token_t;

char *token_str(token_t t);

#endif