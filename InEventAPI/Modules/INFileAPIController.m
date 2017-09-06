#import "INFileAPIController.h"

@implementation INFileAPIController

#pragma mark - File

- (void)createAuthenticatedAtCompany:(NSInteger)companyID withName:(NSString *)name withWidth:(NSString *)width withHeight:(NSString *)height withFile:(NSString *)file {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && name != nil && width != nil && height != nil && file != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"name" : name, @"width" : width, @"height" : height}, @"POST" : @{@"file" : file}};

		[self objectWithModule:@"file" method:@"create" attributes:attributes];
	}
}

- (void)createWithOnboardingToken:(NSString *)onboardingToken withName:(NSString *)name withWidth:(NSString *)width withHeight:(NSString *)height withFile:(NSString *)file {


	if (onboardingToken != nil && name != nil && width != nil && height != nil && file != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"onboardingToken" : onboardingToken, @"name" : name, @"width" : width, @"height" : height}, @"POST" : @{@"file" : file}};

		[self objectWithModule:@"file" method:@"create" attributes:attributes];
	}
}

@end