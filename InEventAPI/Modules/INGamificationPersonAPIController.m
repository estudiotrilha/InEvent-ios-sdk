#import "INGamificationPersonAPIController.h"

@implementation INGamificationPersonAPIController

#pragma mark - GamificationPerson

- (void)bindAuthenticatedAtGamification:(NSInteger)gamificationID withName:(NSString *)name withUsername:(NSString *)username {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && name != nil && username != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"gamificationID" : [NSString stringWithFormat:@"%ld", (long)gamificationID]}, @"POST" : @{@"name" : name, @"username" : username}};

		[self objectWithModule:@"gamification.person" method:@"bind" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtGamification:(NSInteger)gamificationID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"gamificationID" : [NSString stringWithFormat:@"%ld", (long)gamificationID]}};

		[self objectWithModule:@"gamification.person" method:@"bind" attributes:attributes];
	}
}

- (void)operateAuthenticatedAtGamification:(NSInteger)gamificationID withKey:(NSString *)key forPerson:(NSInteger)personID withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"gamificationID" : [NSString stringWithFormat:@"%ld", (long)gamificationID], @"key" : key, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"gamification.person" method:@"operate" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtGamification:(NSInteger)gamificationID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"gamificationID" : [NSString stringWithFormat:@"%ld", (long)gamificationID]}};

		[self objectWithModule:@"gamification.person" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtGamification:(NSInteger)gamificationID withSelection:(NSString *)selection {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && selection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"gamificationID" : [NSString stringWithFormat:@"%ld", (long)gamificationID], @"selection" : selection}};

		[self objectWithModule:@"gamification.person" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtEventForPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"gamification.person" method:@"get" attributes:attributes];
	}
}

@end
