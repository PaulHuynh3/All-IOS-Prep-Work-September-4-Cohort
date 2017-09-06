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
        
        _question = fullQuestion;
        
        
        
        
    }
    
    return self;


}



//-(int)generateMathQuestion:(int)userAnswer {
//    
//
//    int randomMathQuestion = arc4random_uniform(11) + 5;
//    self.userInputAnswer = randomMathQuestion;
//    
//    char input[255];
//    printf("What is your answer: ");
//    fgets(input, 255, stdin);
//    NSString *collectUserInput = [NSString stringWithUTF8String:input];
//    
//    int collectUserInputInt = [collectUserInput intValue];
//    
////    if ([])

@end
