#import <Foundation/Foundation.h>

@interface Car : NSObject {
	//Protected instance variables (not recommended.)
}

@property (copy) NSString *model;
@property (getter=isRunning) BOOL running;

-(void) drive;

+ (void) setDefaultModel: (NSString *)aModel;

- (id)initWithModel:(NSString *) aModel;

@end
