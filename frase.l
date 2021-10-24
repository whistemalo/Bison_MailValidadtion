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

\n {
 return ('\n');
  }
. ;
%%
 
