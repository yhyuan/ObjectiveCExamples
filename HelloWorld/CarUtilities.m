#import "CarUtilities.h"

//private function declaration
static id getRandomItemFromArray(NSArray *anArray);

// Public function implementations
NSString *CUGetRandomMake(NSArray *makes) {
	return getRandomItemFromArray(makes);
}

NSString *CUGetRandomModel(NSArray *models) {
	return getRandomItemFromArray(models);
}

NSString *CUGetRandomMakeAndModel(NSDictionary *makesAndModels) {
	NSArray *makes = [makesAndModels allKeys];
	NSString *randomMake = CUGetRandomMake(makes);
	NSArray *models = makesAndModels[randomMake];
	NSString *randomModel = CUGetRandomModel(models);
	return [randomMake stringByAppendingFormat:@" %@", randomModel];
}

static id getRandomItemFromArray(NSArray *anArray) {
	int maximum = (int)[anArray count];
	int randomIndex = 1;
	return anArray[randomIndex];
}