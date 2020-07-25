#include "token.h"

typedef struct token {
    token_t type;
    char *text;
} token;

typedef struct testcase {
    char *filename;
    // must end in TOKEN_EOF to signify last token
    token tokens[];
} testcase;

testcase testcases[] = {
    {
        "eof_comment.bm",
        {
            {TOKEN_COMMENT, "// my comment"},
            {TOKEN_EOF},
        },
    },
}

int main(int argc, char **argv) {

}