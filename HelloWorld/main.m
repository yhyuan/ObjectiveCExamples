//make LDFLAGS="-lbsd"
#import <Foundation/Foundation.h>
//@import Foundation;
#import "CarUtilities.h"

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		NSDictionary *makesAndModels = @{
			@"Ford": @[@"Explorer", @"F-150"],
			@"Honda": @[@"Accord", @"Civic", @"Pilot"],
			@"Nissan": @[@"370Z", @"Altima", @"Versa"],
			@"Porsche": @[@"911 Trubo", @"Boxster", @"Cayman S"],
		};
		NSString *randomCar = CUGetRandomMakeAndModel(makesAndModels);		
		NSLog(@"Select a %@", randomCar);
	}
	return 0;
} 
