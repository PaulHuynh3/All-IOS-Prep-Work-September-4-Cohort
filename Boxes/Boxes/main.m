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
        
        Box* boxSize = [[Box alloc]initWithBoxVolume:2 andWidth:2 andLength:2];
        
        [boxSize calculateVolume];
        
    
        
        
    }
    return 0;
}
