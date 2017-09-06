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
        _collectionOfTime = [[NSMutableArray alloc]init];
    }
    return self;
}

/*
 QuestionManager is also going to generate a string like this: total time: 60s, average time: 10s
 
 So go ahead and create a method called something like timeOutput. Make it return an NSString*. Generate this string and return it.
 
 In main.m call this method. Log the returned string. Your app should now be able to produce an output like this:
 
 */

-(NSString *)timeOutput{

    int totalTime = 0;
    int averageTime = 0;
    for(NSInteger i = 0; i < self.collectionOfTime.count; i++){
        totalTime = totalTime + (int)[self.collectionOfTime objectAtIndex:i];
    averageTime = totalTime / self.collectionOfTime.count;
    }
    
    NSString* displayTime = [NSString stringWithFormat:@"Total time:%is average time:%is",totalTime, averageTime];
    
    NSLog(@"%@",displayTime);

    return 0;
}


@end
