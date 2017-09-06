//
//  AdditionalQuestion.h
//  Maths
//
//  Created by Paul on 2017-09-05.
//  Copyright © 2017 Paul. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionalQuestion : NSObject

@property NSInteger answer;
@property NSString* question;


//generate a random math question and answer handling the  correct answer
-(instancetype)init;



@end
