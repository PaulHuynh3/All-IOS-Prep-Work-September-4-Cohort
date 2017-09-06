//
//  AdditionalQuestion.m
//  Maths
//
//  Created by Paul on 2017-09-05.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "AdditionalQuestion.h"

@implementation AdditionalQuestion
//arc_4random(10) gives 0 - 9; 91 + 10 gives 10 - 100;
-(instancetype)init{
    self = [super init];
    
    if (self){
        NSInteger questionOne = arc4random_uniform(91)+10;
        NSInteger questionTwo = arc4random_uniform(91)+10;
        NSInteger randomMathAnswer = questionOne + questionTwo;
        //correct answer not user's answer
        _answer = randomMathAnswer;
        
        //need to ask the question in main pass property through main
        NSString* fullQuestion = [NSString stringWithFormat:@"What is %li + %li?",questionOne,questionTwo];
        //set property equal to question being asked
        _question = fullQuestion;
        
        //set startTime in init when its run game will start
        _startTime = [NSDate date];
      
        
        }
         return self;
    }


//set the end time after the user answer the question
// has to be _answer if i put self.answer it gives error
-(NSInteger)answer{

    self.endTime = [NSDate date];
    
    return _answer;
}

/*OK we also need to know the time difference between startTime and endTime in seconds. We will need to add a method to AdditionQuestion. Let's call this method answerTime. This method should return a calculated value based on the startTime and endTime. The return type is an NSTimeInterval.
 
 To do the calculation use the NSDate method timeIntervalSinceDate:. Look up how to use it here. You will want to round this value to make it more human readable. */

-(NSTimeInterval)answerTime{
    NSTimeInterval answerTime = [_endTime timeIntervalSinceDate:_startTime];
    
    NSTimeInterval answerTimeSeconds = answerTime * 100000;
    
    NSLog(@"%f",answerTimeSeconds);
    return answerTimeSeconds;
}


@end
