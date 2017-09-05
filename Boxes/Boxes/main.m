//
//  main.m
//  Boxes
//
//  Created by Paul on 2017-09-05.
//  Copyright © 2017 Paul. All rights reserved.
//

/* 
 Inside main.m:
 
 Initialize a Box using three floats as inputs for height, width, and length
 Calculate the volume of the box and check your answer by NSLogging the box’s volume
 To find the volume of any cube you need to know the length, width and height. The formula to find the volume multiplies the length by the width by the height
 
 */

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Box* firstBox = [[Box alloc]initWithBoxVolume:2 andWidth:2 andLength:2];
        
        [firstBox volume];
        
        
        
        Box* SecondBox = [[Box alloc]initWithBoxVolume:4 andWidth:4 andLength:4];
        
        [SecondBox volume];
    
        //see how many times the box will fit
        float boxFit = [firstBox doesBoxFit:SecondBox];
        
        NSLog(@"%f",boxFit);
        
        
    }
    return 0;
}
