// main.m
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        double x = 24.0;
        NSNumber *result = @(x * .15);
        NSLog(@"%.2f", [result doubleValue]);
    }
    return 0;
}