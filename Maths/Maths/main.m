//
//  main.m
//  Maths
//
//  Created by Paul on 2017-09-05.
//  Copyright © 2017 Paul. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        bool match = YES;
        
        while (match == YES) {
       
      //255 unit long array of characters
        char inputChars[255];
        
        printf("Please input a string: ");
        
        //limit input to max 255 characters
        fgets(inputChars, 255, stdin);
        
//        //print as a c string
        printf("your string is: %s\n",inputChars);
        
        //convert char array to an NSString object
        NSString *initialInput = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
        
        
        NSString* userFinalInput = [initialInput stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        NSLog(@"%@",userFinalInput);
        
        }
        

    }
    return 0;
}
