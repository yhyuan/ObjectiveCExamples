// Car.h
#import <Foundation/Foundation.h>

@interface Car : NSObject

@property (copy) NSString *model;

- (void)startEngine;
- (void)driveForDistance:(NSNumber *)theDistance;
- (void)turnByAngle:(NSNumber *)theAngle
            quickly:(NSNumber *)useParkingBrake;

@end
