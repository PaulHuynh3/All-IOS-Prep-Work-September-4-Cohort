//
//  QuestionManager.h
//  Maths
//
//  Created by Paul on 2017-09-06.
//  Copyright © 2017 Paul. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QuestionManager : NSObject
@property(nonatomic)NSMutableArray* question;

-(instancetype)init; 

-(NSString*)timeOutput;

@end
