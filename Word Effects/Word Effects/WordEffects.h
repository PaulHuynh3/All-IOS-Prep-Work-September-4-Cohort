//
//  WordEffects.h
//  Word Effects
//
//  Created by Paul on 2017-09-04.
//  Copyright © 2017 Paul. All rights reserved.
//
/* 
 The app will take in two pieces of data from the user:
 
 a number, to indicate which operation to do
 a string, to operate on

 */


#import <Foundation/Foundation.h>

@interface WordEffects : NSObject

-(NSString*)userInput:(NSString*)input number:(int)n;

@end
