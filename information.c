#include<stdio.h>
#include<stdlib.h>
int main()
{
	char *string = (char*)malloc(1000);
	printf(" 王皓 2017051226 ");
	FILE *fp = fopen("/wh/test.txt", "r");
	fgets(string, 1000, fp);
	printf("%s", string);
	
	return 0;

}