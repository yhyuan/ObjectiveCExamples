#import "Car.h"

@implementation Car {
	// Private instance varialbes
	double _odometer;
}

//@synthesize model = _model; //Optional for Xcode 4.4 +

-(void) drive {
	_odometer += 10;
	NSLog(@"Driving a %@. Vroooom!", self.model);
	NSLog(@"%.1f", _odometer);
}

@end
