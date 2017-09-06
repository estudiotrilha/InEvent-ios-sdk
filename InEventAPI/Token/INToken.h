//
//  INToken.h
//  InEvent
//
//  Created by Pedro Góes on 16/07/14.
//  Copyright (c) 2014 InEvent. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "INTokenSingleton.h"

@interface INToken : NSObject

#pragma mark - Initialization
- (void)setAllowedKeys:(NSArray *)keys;

#pragma mark - Setters
- (void)setObject:(id)anObject forKey:(id < NSCopying >)aKey;
- (id)objectForKey:(id)aKey;

#pragma mark - Getters
- (BOOL)hasKey:(id < NSCopying >)aKey;
- (NSArray *)getAllKeys;

#pragma mark - Cleaner
- (void)resetData;

@end
