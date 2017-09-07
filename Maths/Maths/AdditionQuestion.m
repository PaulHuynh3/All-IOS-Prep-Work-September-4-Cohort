//
//  AdditionQuestion.m
//  Maths
//
//  Created by Paul on 2017-09-06.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

-(id)init{
    self = [super init];
    
    if (self){
    
        [self generateQuestion];
    }
    return self;
}

-(void)generateQuestion{
    super.answer = (self.leftValue + self.rightValue);
    super.question =[NSString stringWithFormat:@"What is %i + %i?",self.leftValue, self.rightValue];
}
@end
