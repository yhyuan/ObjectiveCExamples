#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		double odometer = 9200.8;
		int odometerAsInteger = (int)odometer;

		NSLog(@"You've driven %.1f miles", odometer);
		NSLog(@"You've driven %d miles", odometerAsInteger);
	}
	return 0;
}