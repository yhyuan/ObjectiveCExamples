#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		int year = 1967;
		int *pointer = &year;
		NSLog(@"%d", *pointer);
		pointer = NULL;
	}
	return 0;
} 