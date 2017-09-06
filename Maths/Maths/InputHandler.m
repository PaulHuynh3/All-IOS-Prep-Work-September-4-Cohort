//
//  InputHandler.m
//  Maths
//
//  Created by Paul on 2017-09-06.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

-(NSString*)takeUserAnswer{

    //255 unit long array of characters
    char inputChars[255];
    
    //limit input to max 255 characters fgets collect user's answer
    fgets(inputChars, 255, stdin);
    
   //convert char array to an NSString object
    NSString *initialInput = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
    
    //remove white space from user answer
    NSString* userAnswerFormatted = [initialInput stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    //save user's answer as a property
    self.userAnswer = userAnswerFormatted;
    
    return self.userAnswer;
}


@end
