//
//  Box.m
//  Boxes
//
//  Created by Paul on 2017-09-05.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "Box.h"

@implementation Box


-(instancetype)initWithBoxVolume:(float)height andWidth:(float)width andLength:(float)length{
    self = [super init];
    
    if(self){
        float boxVolume = height * width * length;
    //dont really need alrdy have user's input
//        height = _height;
//        width = _width;
//        length = _length;
        
        _volume = boxVolume;
      
    }
    
    return self;
    
}

-(void)calculate{
    
    NSLog(@"The size of the box is: %f",_volume);
}

@end
