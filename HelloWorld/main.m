#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		char model[5] = {'H','o','n','d','a'};
		char *modelPointer = &model[0];
		for (int i=0; i<5; i++) {
			NSLog(@"Value at memeory address %p is %c", modelPointer, *modelPointer);
			modelPointer++;
		}
		NSLog(@"The first letter is %c", *(modelPointer - 5));
	}
	return 0;
} 