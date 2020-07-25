%{
#include "token.h"
%}

escapeseq \\.
nonbackslash [^\\]

%%

(" "|\t|\n) /* skip whitespace */

    /* actually "/*"((("*"[^/])?)|[^*])*"* /"?   <- extra space inserted */
"/*"("*"[^/]|[^*])*"*/" { return TOKEN_COMMENT; }
"//".* { return TOKEN_COMMENT; }

array { return TOKEN_ARRAY; }
boolean { return TOKEN_BOOLEAN; }
char { return TOKEN_CHAR; }
else { return TOKEN_ELSE; }
false { return TOKEN_FALSE; }
for { return TOKEN_FOR; }
function { return TOKEN_FUNCTION; }
if { return TOKEN_IF; }
integer { return TOKEN_INTEGER; }
print { return TOKEN_PRINT; }
return { return TOKEN_RETURN; }
string { return TOKEN_STRING; }
true { return TOKEN_TRUE; }
void { return TOKEN_VOID; }
while { return TOKEN_WHILE; }

[_a-zA-Z][_0-9a-zA-Z] { return TOKEN_IDENT; }
-?[0-9]+ { return TOKEN_INT_LIT; }
'.' { return TOKEN_CHAR_LIT; }
\"({nonbackslash}|{escapeseq})*\" { return TOKEN_STRING_LIT; }


\+ { return TOKEN_ADD; }

%%

// No more files
int yywrap() { return 1; }
