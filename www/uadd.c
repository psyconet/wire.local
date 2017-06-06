#include <stdio.h>
#include <string.h>
int main(int argc, char * argv[]){
	setuid(0);
	char str[500];
	strcpy(str, "/bin/sh /var/www/html/wire.local/www/uadd.sh ");
	strcat(str, argv[1]);
	strcat(str, " ");
	strcat(str, argv[2]);
	strcat(str, "\n");
	//printf(str);
	system(str);
	return 0;
}
