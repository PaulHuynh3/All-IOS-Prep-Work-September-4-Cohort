//
//  Car.h
//  Toyotas are Cars too!
//
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

@property (strong, nonatomic) NSString* model;
@property (nonatomic, assign) int num;


//instance class
-(void)drive;

-(instancetype)initWithModel: (NSString*) model;


@end
