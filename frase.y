%{
#include <stdlib.h>
#include <stdio.h>
#define YYSTYPE char*
%}

%token USUARIO ARROBA DOMINIO DCOM TODO LETRAS

%%
login: '\n' | mailPass | mailPass login 
;

mailPass : passInit | mailInit ;

mailInit : USUARIO mail'\n'
 {printf("\n>> Email Correcto\n");}
;

mail : ARROBA DOMINIO DCOM
;

passInit : USUARIO '\n' {printf("\n>> Contraseña Media\n");}
         | LETRAS '\n' {printf("\n>> Contraseña Basica\n");}
         | TODO '\n' {printf("\n>> Contraseña Avanzada\n");}
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