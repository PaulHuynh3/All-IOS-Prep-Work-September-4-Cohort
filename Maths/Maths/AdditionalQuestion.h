//
//  AdditionalQuestion.h
//  Maths
//
//  Created by Paul on 2017-09-05.
//  Copyright © 2017 Paul. All rights reserved.
//



#import <Foundation/Foundation.h>

@interface AdditionalQuestion : NSObject
//keep track of the correct answer and the question to ask the user
@property(nonatomic) NSInteger answer;
@property(nonatomic) NSString* question;
//create properties to track how long the user played the game
@property(nonatomic) NSDate* startTime;
@property(nonatomic) NSDate* endTime;

//generate a random math question and answer handling the  correct answer
-(instancetype)init;

//calculate the amount of seconds from start time to end time
-(NSTimeInterval)answerTime;


@end
