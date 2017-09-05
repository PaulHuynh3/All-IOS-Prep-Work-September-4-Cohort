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
        _height = height;
        _width = width;
        _length = length;
      
    }
    return self;
}


- (float)volume
{
    float volume = self.width * self.height * self.length;

    return volume;
}


//[self volume] calls the method volume also [otherBox volume]
-(float)doesBoxFit:(Box*)secondBox {
  
    float fitBox = [secondBox volume]/ [self volume];
    
    return fitBox;
}


@end
