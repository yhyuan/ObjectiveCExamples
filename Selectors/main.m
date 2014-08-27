// main.m
#import <Foundation/Foundation.h>
#import "Car.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Car *porsche = [[Car alloc] init];
        porsche.model = @"Porsche 911 Carrera";
        
        SEL stepOne = NSSelectorFromString(@"startEngine");
        SEL stepTwo = @selector(driveForDistance:);
        SEL stepThree = @selector(turnByAngle:quickly:);
        
        // This is the same as:
        // [porsche startEngine];
        [porsche performSelector:stepOne];

        // This is the same as:
        // [porsche driveForDistance:[NSNumber numberWithDouble:5.7]];
        [porsche performSelector:stepTwo
                      withObject:[NSNumber numberWithDouble:5.7]];
        
        if ([porsche respondsToSelector:stepThree]) {
            // This is the same as:
            // [porsche turnByAngle:[NSNumber numberWithDouble:90.0]
            //              quickly:[NSNumber numberWithBool:YES]];
            [porsche performSelector:stepThree
                          withObject:[NSNumber numberWithDouble:90.0]
                          withObject:[NSNumber numberWithBool:YES]];
        }
        NSLog(@"Step one: %@", NSStringFromSelector(stepOne));
    }
    return 0;
}