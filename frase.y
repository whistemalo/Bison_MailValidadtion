%{
#include <stdlib.h>
#include <stdio.h>
#define YYSTYPE char*
%}

%token USUARIO ARROBA DOMINIO DCOM

%%
dialogo : frase
;

frase :USUARIO ARROBA DOMINIO DCOM '\n'
 {printf("\n>> Email Correcto\n");}
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