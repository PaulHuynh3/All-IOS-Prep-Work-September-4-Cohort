//
//  Car.m
//  Toyotas are Cars too!
//
//

#import "Car.h"

@implementation Car

-(void)drive{
    NSLog(@"You are driving %@", self.model);
}

-(instancetype)initWithModel:(NSString *)model{
    self = [super init];
    
    if (self) {
        _model = model;
    }
    return self;
}




@end
