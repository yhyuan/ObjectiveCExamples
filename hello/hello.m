#import <Foundation/Foundation.h>
#import <Foundation/NSString.h>
 
@interface HelloWorld : NSObject
- (void) print;
- (void) printName: (NSString *) nameStr;
@end
 
@implementation HelloWorld
- (void) print;
{
    [self printName: @"World!"];
}
- (void) printName: (NSString *) nameStr;
{
    NSLog( @"Hello %@", nameStr );
}
@end
 
int main(void)
{
    HelloWorld *h = [[HelloWorld alloc] init];
    
    [h print];
    [h printName: @"Space!"];
    [h release];
    
    return 0;
}