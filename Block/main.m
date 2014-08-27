// main.m
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Declare the block variable
        double (^distanceFromRateAndTime)(double rate, double time);
        
        // Create and assign the block
        distanceFromRateAndTime = ^double(double rate, double time) {
            return rate * time;
        };

        /*
        double (^randomPercent)(void) = ^ {
            return (double)arc4random() / 4294967295;
        }; */

        // Call the block
        double dx = distanceFromRateAndTime(35, 1.5);
        
        NSLog(@"A car driving 35 mph will travel "
              @"%.2f miles in 1.5 hours.", dx);

        NSString *make = @"Honda";
        NSString *(^getFullCarName)(NSString *) = ^(NSString *model) {
            return [make stringByAppendingFormat:@" %@", model];
        };
        NSLog(@"%@", getFullCarName(@"Accord"));    // Honda Accord

        make = @"Porsche";
        NSLog(@"%@", getFullCarName(@"911 Turbo")); // Honda 911 Turbo

        __block int i = 0;
        int (^count)(void) = ^ {
            i += 1;
            return i;
        };
        NSLog(@"%d", count());    // 1
        NSLog(@"%d", count());    // 2
        NSLog(@"%d", count());    // 3

    }
    return 0;
}