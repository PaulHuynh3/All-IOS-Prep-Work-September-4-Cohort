//
//  main.m
//  Word Effects
//
//  Created by Paul on 2017-09-04.
//  Copyright © 2017 Paul. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    //255 unit long array of characters
        char inputChars[255];
        printf("input a string: ");
        
     //limit input to max 255 characters
        fgets(inputChars, 255, stdin);
        
    //print as a c string
        printf("Your string is %s\n", inputChars);
        
    //convert char array to an NSString object
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        
    //print nsstring object
        NSLog(@"Input was: %@", inputString);
        
        //uppercase string
        NSString* UpperCase = [inputString uppercaseString];
        
        //lower case
        NSString* lowerCase = [input lowerCase];
        
        //numberize
        
        
    }
    return 0;
}
