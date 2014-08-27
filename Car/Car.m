#import "Car.h"

static NSString *_defaultModel;

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

+ (void)setDefaultModel:(NSString *)aModel {
	_defaultModel = [aModel copy];
}

+ (void)initialize {
	if (self == [Car class]) {
		_defaultModel = @"Nissan Versa";
	}
}

-(id)initWithModel:(NSString *)aModel {
	self = [super init];
	if(self) {
		_model = [aModel copy];
		_odometer = 0;
	}
	return self;
}

-(id)init {
	return [self initWithModel: _defaultModel];
}


@end
