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
        height = _height;
        width = _width;
        length = _length;
      
    }
    return self;
}


- (float)calculateVolume
{
    
    float volume = self.width * self.height * self.length;
    
    return volume;
}



/*
 Inside Box:
 
 Add a method that takes in another box and returns how many times one box will fit inside the other. Be conscious about understanding which box has a greater volume and how that will affect the result.
 NOTE: Just use the volumes to calculate how many times a box can fit into another box, don't bother with trying to come up with the logic of physically fitting boxes into each other.
 
 */

-(float)doesBoxFit:(Box*)other {
  
    
    
}


@end
