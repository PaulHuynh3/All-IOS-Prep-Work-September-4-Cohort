//
//  ScoreKeeper.h
//  Maths
//
//  Created by Paul on 2017-09-06.
//  Copyright © 2017 Paul. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property NSInteger right;
@property NSInteger wrong;

-(instancetype)init;

-(void)score;



@end
