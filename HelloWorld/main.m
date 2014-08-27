#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		NSString *model = @"Honda";
		NSLog(@"%@", model);
		model = NULL;
		model = nil;
		int *aPointer;
		//aPointer = nil; //Don't do this. 
		aPointer = NULL;
	}
	return 0;
} 