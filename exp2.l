/*Design lex code to count number of lines, spaces,tabs and other characters. */

%{
	#include<stdio.h>
	int sp=0,tab=0,nl=0,car=0;
%}

%%
\n		{nl++;}
\t		{tab++;}
[ ]		{sp++;}
.		{car++;}

%%

int main(){
	yylex();
	
	printf("Number of spaces: %d\n",sp);
	printf("Number of tabs: %d\n",tab);
	printf("Number of newLine: %d\n",nl);
	printf("Number of characters: %d\n",car);
	return 0;
}

int yywrap(){

	return 1;
}
