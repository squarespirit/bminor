%{
#include "token.h"
%}

escapeseq \\.
notbackslashorquote [^\\"]
notstarslash "*"[^/]|[^*]

%%

(" "|\t|\n) /* skip whitespace */

"/*"({notstarslash})*"*/" { return TOKEN_COMMENT; }
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

[_a-zA-Z][_0-9a-zA-Z]* { return TOKEN_IDENT; }
-?[0-9]+ { return TOKEN_INT_LIT; }
'.' { return TOKEN_CHAR_LIT; }
\"({notbackslashorquote}|{escapeseq})*\" { return TOKEN_STRING_LIT; }

: { return TOKEN_COLON; }
\[ { return TOKEN_LBRACKET; }
\] { return TOKEN_LBRACKET; }
\( { return TOKEN_LPAREN; }
\) { return TOKEN_RPAREN; }
\{ { return TOKEN_LBRACE; }
\} { return TOKEN_RBRACE; }
\; { return TOKEN_SEMI; }

\+\+ { return TOKEN_INCREMENT; }
\-\- { return TOKEN_DECREMENT; }
\! { return TOKEN_NOT; }
\^ { return TOKEN_EXPONENT; }
\+ { return TOKEN_ADD; }
- { return TOKEN_SUBTRACT; }
\* { return TOKEN_MULTIPLY; }
\/ { return TOKEN_DIVIDE; }
\% { return TOKEN_MODULUS; }
\< { return TOKEN_LT; }
\<= { return TOKEN_LE; }
\> { return TOKEN_GT; }
\>= { return TOKEN_GE; }
== { return TOKEN_EQUALS; }
!= { return TOKEN_NOT_EQUALS; }
&& { return TOKEN_AND; }
\|\| { return TOKEN_OR; }
= { return TOKEN_ASSIGN; }

%%

// No more files
int yywrap() { return 1; }
