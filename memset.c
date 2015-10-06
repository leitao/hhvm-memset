#include<stdio.h>
#include<string.h>
#include<stdlib.h>

#define C 0
#define SIZE 1024


int main(int argc, char **argv){
	char ptr[SIZE];
	int i;

	memset(ptr, C, SIZE);

	for (i = 0; i < SIZE; i++){
		if (ptr[i] != C){
			printf("Position %d is different of '%d'\n", i, C);
		}
	}

	return 0;
}
