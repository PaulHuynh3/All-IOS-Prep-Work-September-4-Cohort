//
//  WordEffects.h
//  Word Effects
//
//  Created by Paul on 2017-09-04.
//  Copyright © 2017 Paul. All rights reserved.
//
/*
 We're going to create an OS X command-line app that does some simple string manipulation.
 
 The app will take in two pieces of data from the user:
 
 a number, to indicate which operation to do
 a string, to operate on
 Wrap the whole app in an infinite while loop, so users can do multiple operations.
 
 Be sure to print out the menu of options at the start of each loop of the app.
 
 As you go through the steps of this assignment, be sure to commit regularly, and push your code to GitHub.
 
 
 */



#import <Foundation/Foundation.h>

@interface WordEffects : NSObject

-(NSString*)userInput:(NSString*)input number:(int)n;

@end
