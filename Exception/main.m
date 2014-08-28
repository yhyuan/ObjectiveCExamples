// main.m
#import <Foundation/Foundation.h>

NSString *getRandomCarFromInventory(NSArray *inventory) {
    int maximum = (int)[inventory count];
    if (maximum == 0) {
        NSException *e = [NSException
                          exceptionWithName:@"EmptyInventoryException"
                          reason:@"*** The inventory has no cars!"
                          userInfo:nil];
        @throw e;
    }
    int randomIndex = arc4random_uniform(maximum);
    return inventory[randomIndex];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        @try {
            NSString *car = getRandomCarFromInventory(@[]);
            NSLog(@"The selected car is: %@", car);
        } @catch(NSException *theException) {
            if (theException.name == @"EmptyInventoryException") {
                NSLog(@"Caught an EmptyInventoryException");
                NSLog(@"%@", theException.reason);
            } else {
                NSLog(@"Ignored a %@ exception", theException);
                @throw;
            }
        }
    }
    return 0;
}