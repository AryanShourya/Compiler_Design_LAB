/*Design a lex code to identify and print a valid c identifier.*/

%{
	#include<stdio.h>
%}

%%
[a-zA-Z_][a-zA-z0-9_]*		{printf("Valid identifier!\n");}
[0-9][a-zA-Z0-9]*			{printf("Invalid identifier!\n");}
[^a-zA-Z0-9_]+				{printf("Invalid identifier!\n");}
[  \t\n]					;
.							;
%%

int main(){
	yylex();
	return 0;
}

int yywrap()
{
	return 1;
}
