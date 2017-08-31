//
//  main.c
//  Assignment 1: FizzBuzz
//
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    /*
    Write a program that prints the numbers from 1 to 100. For the multiples of 3, print "Fizz" instead of the number and for the multiples of 5, print "Buzz" instead of the number. For numbers which are multiples of both 3 and 5 print "FizzBuzz" 
     */
    
    /* if (n[a] is divisible by 3 && 5) {
     printf("fizzbuzz")
     } else if (the number is divisible by 3) {
     
     printf("fizz");
     
     } else if (the number is divisible by 5) {
     printf("buzz");
     } else {print number}
     
     */
   
    int a,b;
    int n [100];
    
    for (a = 1; a <= 100; a++) {
        
        n[a] = a;
        
        if (n[a] % 3 ==0 && n[a] % 5 ==0) {
            printf("Number[%d]:Fizzbuzz\n",n[a]);
        } else if (n[a] % 3 == 0){
            printf("Number[%d]:Fizz\n", n[a]);
        } else if(n[a] % 5 == 0){
            printf("Number[%d]:Buzz\n", n[a]);
        } else {printf("Number[%d]:%d\n", a, n[a]);
        }
      
        }
 
    
    // regular way
    /*
    int a;
    
    for (a = 1; a <= 100; a++) {
        
        if (a % 3 == 0 && a % 5 == 0) {
            printf("FizzBuzz\n");
        } else if (a % 3 == 0) {
            printf("Fizz\n");
        } else if (a % 5 == 0) {
            printf("Buzz\n");
        } else { printf("%d\n", a);
            
        }

    }
    
    */
    
    return 0;
}
