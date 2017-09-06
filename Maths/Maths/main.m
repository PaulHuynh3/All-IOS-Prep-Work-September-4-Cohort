//
//  main.m
//  Maths
//
//  Created by Paul on 2017-09-05.
//  Copyright © 2017 Paul. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionalQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

bool match = YES;
       //instantiating score outside loop so it saves..
ScoreKeeper* scoreKeeper = [[ScoreKeeper alloc]init];
        

while (match) {
    [scoreKeeper score];
   AdditionalQuestion *generateQuestion = [[AdditionalQuestion alloc]init];
    //save the property of question to full question dot notation for property
    NSString* askQuestion = generateQuestion.question;
    NSLog(@"%@",askQuestion);

    //From property the final correct answer
    NSInteger correctAnswer = generateQuestion.answer;
    
    
    InputHandler* inputHandler = [[InputHandler alloc]init];
    
    //Calling method to parse user's answer
    [inputHandler takeUserAnswer];
    
    
    
    //create a property for user's answer as a string
    NSString* userFinalAnswer = inputHandler.userAnswer;
    
    //make user's answer as integer
    NSInteger userFinalAnswerInteger = [userFinalAnswer integerValue];
    
    
    //if user types "quit" exit out of the while loop.
    if ([userFinalAnswer isEqualToString:@"quit"]){
        match = NO;
        break;
    }
    
    
    //scorekeeper and displays if user answer is correct.
    if (correctAnswer == userFinalAnswerInteger){
        
        scoreKeeper.right++;
        NSLog(@"Right!");
    } else {
        scoreKeeper.wrong++;
        NSLog(@"Wrong!");
    }
    
    [generateQuestion answerTime];

    
            
    }
    
        
    }

    return 0;
}
