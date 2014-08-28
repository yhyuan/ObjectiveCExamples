// main.m
#import <Foundation/Foundation.h>
#import "InventoryErrors.h"

NSString *getRandomCarFromInventory(NSArray *inventory, NSError **error) {
    int maximum = (int)[inventory count];
    if (maximum == 0) {
        if (error != NULL) {
            NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"Could not"
            " select a car because there are no cars in the inventory."};
            
            *error = [NSError errorWithDomain:InventoryErrorDomain
                                         code:InventoryEmptyError
                                     userInfo:userInfo];
        }
        return nil;
    }
    int randomIndex = arc4random_uniform(maximum);
    return inventory[randomIndex];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *inventory = @[];
        NSError *error;
        NSString *car = getRandomCarFromInventory(inventory, &error);
        
        if (car == nil) {
            // Failed
            NSLog(@"Car could not be selected");
            NSLog(@"Domain: %@", error.domain);
            NSLog(@"Error Code: %ld", error.code);
            NSLog(@"Description: %@", [error localizedDescription]);
            
        } else {
            // Succeeded
            NSLog(@"Car selected!");
            NSLog(@"%@", car);
        }
    }
    return 0;
}