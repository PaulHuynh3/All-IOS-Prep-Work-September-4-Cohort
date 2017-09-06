//
//  main.m
//  Maths
//
//  Created by Paul on 2017-09-05.
//  Copyright © 2017 Paul. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionalQuestion.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        bool match = YES;
        
        while (match == YES) {
       
   AdditionalQuestion *function = [[AdditionalQuestion alloc]init];
    //save the property of question to full question dot notation for property
    NSString* askQuestion = function.question;
    NSLog(@"%@",askQuestion);
    //turn askQuestion into an integer
    NSInteger questionAsInteger = [askQuestion integerValue];

    //This is from property answer which contains the correct answer not user answer
    NSInteger correctAnswer = function.answer;
    
    
            
            
      //255 unit long array of characters
        char inputChars[255];
        
        printf("What is the answer: ");
        
        //limit input to max 255 characters
        fgets(inputChars, 255, stdin);
        
        //convert char array to an NSString object
        NSString *initialInput = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
        
        //remove white space from user answer
        NSString* removeWhiteSpace = [initialInput stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
            //turn user answer as integer
       NSInteger userAnswerInteger = [removeWhiteSpace integerValue];
            
        
        
if (correctAnswer == userAnswerInteger){
    NSLog(@"RIGHT!");
} else {
    NSLog(@"Wrong! ");
}
        
    
            
        }
        
        

    }
    return 0;
}
