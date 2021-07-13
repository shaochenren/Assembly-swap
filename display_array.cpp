//shaochenren



#include<stdio.h>
using namespace std;

extern "C" void display_array(long array[], long amount);

void display_array(long array[], long amount){
	for (int i = 0; i < amount; ++i){
		printf("%ld ", array[i]);
	}
	printf("\n\n");
}
