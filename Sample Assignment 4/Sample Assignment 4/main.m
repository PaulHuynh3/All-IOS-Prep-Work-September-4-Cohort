//
//  main.m
//  Sample Assignment 4
//
//

#import <Foundation/Foundation.h>
#import "Locator.h"

//create a function for largest number in array
NSNumber* findingNumber (NSArray* myFunction){
    NSNumber* maxNumber = [myFunction valueForKeyPath:@"@max.intValue"];
    NSLog(@"The largest number in this array using function is:%@", maxNumber);
    return maxNumber;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //random arrays
        NSMutableArray *randomNumbers = [[NSMutableArray alloc]initWithObjects:@4,@2,@7,@1,@4,@10,@100, nil];
        
        NSArray *moreRandom = @[@1,@5,@2,@3];
        
        NSArray *symphony = @[@100,@1000,@500,@3337];
        
        //finding largest number using init
        Locator *locateMe = [[Locator alloc]initWithArrayLocate:randomNumbers];
        
        
        //finding the largest number using class method
        NSLog(@"The largest number using class method: %i",[locateMe findIt:moreRandom]);
        
        //using function
        findingNumber(symphony);
    
        
        
        
    }
    return 0;
}

