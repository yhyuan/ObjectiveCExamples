#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		int year = 1967;
		void *genericPointer = &year;
		int *intPointer = (int *)genericPointer;
		NSLog(@"%d", *intPointer);
	}
	return 0;
} 