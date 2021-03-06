#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INTriggerAPIController : INAPIController

#pragma mark - Trigger
- (void)createAuthenticatedAtEventWithActionType:(NSString *)actionType atAction:(NSInteger)actionID withReactionType:(NSString *)reactionType atReaction:(NSInteger)reactionID;
- (void)removeAuthenticatedAtTrigger:(NSInteger)triggerID;
- (void)removeAuthenticatedAtEventWithReaction:(NSString *)reaction atReaction:(NSInteger)reactionID;
- (void)findAuthenticatedAtEvent;
@end
