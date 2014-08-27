#import <Foundation/Foundation.h>

typedef struct {
	unsigned char red;
	unsigned char green;
	unsigned char blue;
} Color;

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		Color carColor = {255, 160, 0}; 
		NSLog(@"Your paint job is (R: %hhu, G: %hhu, B: %hhu)", carColor.red, carColor.green, carColor.blue);
	}
	return 0;
} 