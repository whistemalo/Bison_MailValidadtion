%{
#include <stdlib.h>
#include <stdio.h>
#define YYSTYPE char*
%}
%token LETRAS NUMLETRAS TODO
%%
dialogo : frase
 | dialogo frase
;
frase : '\n' 
| LETRAS '\n' {printf("\n>> Frase correcta\n");}
| NUMLETRAS '\n' {printf("\n>> Frase correcta\n");}
| TODO '\n' {printf("\n>> Frase correcta\n");}
;


%%
int main() {
 yyparse();
}
yyerror (char *s)
{
 printf ("%s\n", s);
}
int yywrap()
{
 return 1;
} 