//
//  KthToLastProblem.h
//  Q-2
//
//  Created by jael ruvalcaba on 25/07/25.
//

#import <Foundation/Foundation.h>
#import "LinkedListNode.h"
#import "LinkedListIndex.h"

NS_ASSUME_NONNULL_BEGIN

@interface KthToLastProblem : NSObject
-(NSNumber *)recursiveApproachPrintKthToLast:(LinkedListNode *_Nullable)head kTh:(NSInteger)k;
-(NSNumber *)iterativeApproachPrintKthToLast:(LinkedListNode *_Nullable)head kTh:(NSInteger)k;

-(LinkedListNode *)wrapperClassApproachPrintKthToLast:(LinkedListNode *_Nullable)head kTh:(NSInteger)k;
@end

NS_ASSUME_NONNULL_END
