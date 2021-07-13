//shaochen ren


#include<stdio.h>

extern "C" long manager();
extern "C" long read_clock();

int main(){
    long ticks;
    long result;

    //Showing ticks of CPU
    ticks = read_clock();
    printf("Welcome to midterm by shaochen ren\n");
    printf("Current tics is %ld\n", ticks);


    result = manager();  

    
    ticks = read_clock();
    printf("Current tics is %ld\n", ticks);

   

    printf("The driver received %ld and dont knwo what do about it .\n", result);
    printf("Have a nice day\n");

    return 0;
}
