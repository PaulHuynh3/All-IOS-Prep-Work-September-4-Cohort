//
//  main.m
//  Toyotas are Cars too!
//
//

#import <Foundation/Foundation.h>
//#import "Car.h" toyota also imports Car class.... as its a subclass
#import "Toyota.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
 
        Car* nissan = [[Car alloc]initWithModel:@"Rogue"];
        
        [nissan drive];
        
        
        Toyota* toyota = [[Toyota alloc]init];
        
        [toyota drive];
        
    }
    return 0;
}
