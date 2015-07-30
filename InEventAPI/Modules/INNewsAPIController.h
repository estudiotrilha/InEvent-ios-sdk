#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INNewsAPIController : INAPIController

#pragma mark - News
- (void)createAuthenticatedAtEventWithMessage:(NSString *)message;
- (void)createAuthenticatedAtActivity:(NSInteger)activityID withMessage:(NSString *)message;
- (void)removeAuthenticatedAtNews:(NSInteger)newsID;
- (void)findAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection;
- (void)findAuthenticatedAtActivity:(NSInteger)activityID;
- (void)getAtNews:(NSInteger)newsID;
@end