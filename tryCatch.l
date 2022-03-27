%{

    #include <stdio.h> 
	#include "y.tab.h"
    void yyerror(const char *s);
%}
/* Auxilary Definations */
Knostar [^*]*              
Nostarfwd [^*/]   
Pstar [\*]+
alpha [A-Za-z_]
digit [0-9]                   

/* Rules*/
%%

"/*"{Knostar}{Pstar}({Nostarfwd}{Knostar}{Pstar})*"/"   ;      
"//".*                                                  ;
try                                                     return try;
catch                                                   return catch;
finally                                                 return finally;
int|float|char|String			                        return data_type;
{digit}+                                                return num; 
{alpha}({alpha}|{digit})*                               return id; 
{digit}+("++"|"--")|("++"|"--"){digit}+                 yyerror("lvalue is required as operand");
[\t\n\ ]                                                ;
.                                                       return *yytext; 

%%


int yywrap(void){}

