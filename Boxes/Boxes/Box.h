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




-(instancetype)initWithBoxVolume:(float)height andWidth:(float)width andLength:(float)length;

-(float)calculateVolume;

-(float)doesBoxFit:(Box*)other;


@end
