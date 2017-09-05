//
//  Locator.m
//  Sample Assignment 4
//
//

#import "Locator.h"

@implementation Locator

//create a method to find the largest number in an array
-(int)findIt:(NSArray *)findTheNumber{
    
    
    int result = 0;
    
    for (NSNumber* n in findTheNumber){
        if ([n intValue] > result){
            result = [n intValue];
        }
    
    }

    return result;
}





@end

