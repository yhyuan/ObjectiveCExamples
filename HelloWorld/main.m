#import <Foundation/Foundation.h>

#define PI 3.14159
#define RAD_TO_DEG(radians) (radians * (180 / PI)

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		double angle = PI / 2;
		NSLog(@"%f", RAD_TO_DEG(angle));
	}
	return 0;
}