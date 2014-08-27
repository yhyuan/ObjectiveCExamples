#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		int years[4] = {1968, 1970, 1989, 1999};
		years[0] = 1967;
		for (int i=0; i<4; i++) {
			NSLog(@"The year at index %d is %d", i, years[i]);
		}
	}
	return 0;
} 