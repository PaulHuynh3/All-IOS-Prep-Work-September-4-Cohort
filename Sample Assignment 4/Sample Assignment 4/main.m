//
//  main.m
//  Sample Assignment 4
//
//

#import <Foundation/Foundation.h>
#import "Locator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *moreRandom = @[@1,@3,@9,@6,@7];
        
        Locator *function = [[Locator alloc]init];

        
        NSLog(@"%i",[function findIt:moreRandom]);
        
        

    
        
        
        
    }
    return 0;
}

