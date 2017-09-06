//
//  QuestionManager.m
//  Maths
//
//  Created by Paul on 2017-09-06.
//  Copyright © 2017 Paul. All rights reserved.
//

/*
 
 OK so let's go ahead and create a class called QuestionManager. Give it a property of type NSMutableArray called questions. You will need to initialize this property to an empty array. Do so by overriding the QuestionManager's init method.
 
 Next go ahead and instantiate QuestionManager outside while in main.m.
 
 
 
 When you create an AdditionQuestion instance in main.m remember to add it to the questions array`.
 
 we are trying to get total and average time
 */

#import "QuestionManager.h"

@implementation QuestionManager

-(instancetype)init{
    self = [super init];
    
    if (self){
        _question = [[NSMutableArray alloc]init];
        
    }
    return self;
}

@end
