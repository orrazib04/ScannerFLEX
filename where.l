%{
#include <stdio.h>
#include <string.h>
%}

%option noyywrap

%%
[ \t\n]              /* Ignorar espacios en blanco y saltos de línea */

SELECT|select        { printf("Palabra clave SELECT\n"); }
FROM|from            { printf("Palabra clave FROM\n"); }
WHERE|where          { printf("Palabra clave WHERE\n"); }
[a-zA-Z][a-zA-Z0-9]* { printf("Token ID: %s\n", yytext); }
.                    /* Ignorar cualquier otro carácter */
%%

int main() {
    yylex();
    return 0;
}