#import <Foundation/Foundation.h>
#import "Car.h"

int main(int argc, const char * argv[]) {
	@autoreleasepool {
    Car *honda = [[Car alloc] init];
    honda.running = YES;                // [honda setRunning:YES]
    NSLog(@"%d", honda.running);        // [honda running]
    NSLog(@"%d", [honda isRunning]);        // [honda running]

		Car *nissan = [[Car alloc] init];
		NSLog(@"Created a %@.", [nissan model]);

		Car *chevy = [[Car alloc] initWithModel: @"Chevy Corvette"];
		NSLog(@"Created a %@, too.", [chevy model]);

        Car *delorean = [[Car alloc] initWithModel:@"DeLorean"];
        
        // Get the class of an object
        NSLog(@"%@ is an instance of the %@ class",
              [delorean model], [delorean class]);
        
        // Check an object against a class and all subclasses
        if ([delorean isKindOfClass:[NSObject class]]) {
            NSLog(@"%@ is an instance of NSObject or one "
                  "of its subclasses",
                  [delorean model]);
        } else {
            NSLog(@"%@ is not an instance of NSObject or "
                  "one of its subclasses",
                  [delorean model]);
        }
        
        // Check an object against a class, but not its subclasses
        if ([delorean isMemberOfClass:[NSObject class]]) {
            NSLog(@"%@ is a instance of NSObject",
                  [delorean model]);
        } else {
            NSLog(@"%@ is not an instance of NSObject",
                  [delorean model]);
        }
        
        // Convert between strings and classes
        if (NSClassFromString(@"Car") == [Car class]) {
            NSLog(@"I can convert between strings and classes!");
        }
        
	}
	return 0;
}