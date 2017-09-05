//
//  Box.h
//  Boxes
//
//  Created by Paul on 2017-09-05.
//  Copyright © 2017 Paul. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

@property float height;
@property float width;
@property float length;



//create a box with initialization
-(instancetype)initWithBoxVolume:(float)height andWidth:(float)width andLength:(float)length;

//formula that calculates volume
-(float)volume;

//method that takes in another box and tells how many times another box can fit in it
-(float)doesBoxFit:(Box*)otherBox;


@end
