#import "INShuttleAPIController.h"

@implementation INShuttleAPIController

#pragma mark - Shuttle

- (void)createAuthenticatedAtEventForPerson:(NSInteger)personID withDeparture:(NSString *)departure withArrival:(NSString *)arrival withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withPrice:(NSString *)price withLicensePlate:(NSString *)licensePlate withCarModel:(NSString *)carModel withDriverName:(NSString *)driverName withConfirmation:(NSString *)confirmation {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && departure != nil && arrival != nil && dateBegin != nil && dateEnd != nil && price != nil && licensePlate != nil && carModel != nil && driverName != nil && confirmation != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}, @"POST" : @{@"departure" : departure, @"arrival" : arrival, @"dateBegin" : dateBegin, @"dateEnd" : dateEnd, @"price" : price, @"licensePlate" : licensePlate, @"carModel" : carModel, @"driverName" : driverName, @"confirmation" : confirmation}};

		[self objectWithModule:@"shuttle" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtEventWithEmail:(NSString *)email withDeparture:(NSString *)departure withArrival:(NSString *)arrival withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withPrice:(NSString *)price withLicensePlate:(NSString *)licensePlate withCarModel:(NSString *)carModel withDriverName:(NSString *)driverName withConfirmation:(NSString *)confirmation {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && email != nil && departure != nil && arrival != nil && dateBegin != nil && dateEnd != nil && price != nil && licensePlate != nil && carModel != nil && driverName != nil && confirmation != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"email" : email, @"departure" : departure, @"arrival" : arrival, @"dateBegin" : dateBegin, @"dateEnd" : dateEnd, @"price" : price, @"licensePlate" : licensePlate, @"carModel" : carModel, @"driverName" : driverName, @"confirmation" : confirmation}};

		[self objectWithModule:@"shuttle" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtEventWithPath:(NSString *)path {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && path != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"path" : path}};

		[self objectWithModule:@"shuttle" method:@"create" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventForPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"shuttle" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && selection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"selection" : selection}};

		[self objectWithModule:@"shuttle" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"shuttle" method:@"find" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtShuttle:(NSInteger)shuttleID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"shuttleID" : [NSString stringWithFormat:@"%ld", (long)shuttleID]}};

		[self objectWithModule:@"shuttle" method:@"remove" attributes:attributes];
	}
}

@end