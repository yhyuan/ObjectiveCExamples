//make LDFLAGS="-lbsd"
#import <Foundation/Foundation.h>

//Declaration
static NSString *getRandomMake(NSArray *makes);

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		NSArray *makes = @[@"Honda", @"Ford", @"Nissan", @"Porsche"];
		NSLog(@"Selected a %@", getRandomMake(makes));
	}
	return 0;
} 

//Implementation
static NSString *getRandomMake(NSArray *makes) {
	int maximum = (int)[makes count];
	int randomIndex = 1; //arc4random_uniform(maximum);
	return makes[randomIndex];
}