/*Design a lex code to check if a given input string is valid or not.(only contains letters)*/


%{
	#include<stdio.h>
%}

%%
[a-zA-z]+  {printf("Valid string\n");}
.*		   {printf("inValid string\n");}
\n		   {return 0;}
%%

int main(){

	yylex();
	return 0;
}

int yywrap(){

	return 1;
}
