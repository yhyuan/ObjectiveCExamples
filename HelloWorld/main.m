#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		int year = 1967;
		int *pointer;
		pointer = &year;
		NSLog(@"%d", *pointer);
		*pointer = 1990;
		NSLog(@"%d", year);
	}
	return 0;
} 