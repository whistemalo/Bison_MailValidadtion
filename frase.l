%{
#include <string.h>
#include "frase.tab.h"
%}
%%
([a-zA-Z])+[0-9]+ {return USUARIO;}

@+ {return ARROBA;}

gmail+|hotmail+|yahoo+ |
outlook+|mail+|udb+ {
 return DOMINIO;
 }
.com|.edu.sv {
 return DCOM;
}

([a-zA-Z])+ {return LETRAS;}


([a-zA-Z])+[0-9]+[!,#,$,%,&,*] {return NUM;}

\n {
 return ('\n');
  }
. ;
%%
 
