//
//  ScoreKeeper.m
//  Maths
//
//  Created by Paul on 2017-09-06.
//  Copyright © 2017 Paul. All rights reserved.
//
/*
 Think about the job of this class. It's going to have to track the number of right and wrong answers. It will also need to generate a string representation of the score for logging.
 
 So, we will need 2 properties and 1 method. The properties will track the right and wrong counts. The method will output a string like this: score: 3 right, 2 wrong ---- 60%
 
 You will need to import and instantiate ScoreKeeper in main.m. Run and test your work.
 */

#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(instancetype)init{
    self = [super init];

    return self;
}

-(void)score{
    
  
   //did not create percent sign  60% maybe use float
    
    NSString* displayLog = [NSString stringWithFormat:@"Score: %lu right, %lu wrong --- ", self.right,self.wrong];

    NSLog(@"%@",displayLog);
}

@end
