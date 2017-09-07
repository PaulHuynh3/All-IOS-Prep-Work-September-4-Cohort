//
//  QuestionFactory.m
//  Maths
//
//  Created by Paul on 2017-09-06.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

-(Question *)generateRandomQuestion{
 NSArray* questionSubclassNames = @[@"AdditionQuestion",@"SubtractingQuestion"];
    
    //number will be 0 and 1
    int random = arc4random_uniform(2);
    
    //put the subclass names in here so you can randomly go to it thats why you have to alloc init
    return [[NSClassFromString (questionSubclassNames[random]) alloc]init];
                                

}

@end
