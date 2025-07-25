//  KthToLastProblem.m
//  Q-2
//  Created by jael ruvalcaba on 25/07/25.


#import "KthToLastProblem.h"

#pragma mark: Private functions

@interface KthToLastProblem()
-(LinkedListNode *)recursiveHelperApproach:(LinkedListNode*)head k:(NSInteger)k index:(NSInteger *)index;
-(LinkedListNode *_Nullable)wrapperClassHelperApproach:(LinkedListNode *_Nullable)head k:(NSInteger)k index:(LinkedListIndex *)index;
@end

#pragma mark: - Implementation

@implementation KthToLastProblem

#pragma mark: - Recursive Approach

- (NSNumber *)recursiveApproachPrintKthToLast:(LinkedListNode *)head kTh:(NSInteger)k {
    
    NSInteger index = 0 ;
    LinkedListNode *result = [self recursiveHelperApproach:head k:k index:&index];
    return result ? @(result.value) : nil;
}

- (LinkedListNode *)recursiveHelperApproach:(LinkedListNode *)head
                                          k:(NSInteger)k
                                      index:(NSInteger *)index {
    
    if (head == nil ){
        return nil;
    }
    LinkedListNode *result = [self recursiveHelperApproach:head.nextNode k:k index:index];
    (*index)++;
    
    if (*index == k + 1 ) {
        return head;
    }
    return result;
}

#pragma mark: - Iterative Approach

- (nonnull NSNumber *)iterativeApproachPrintKthToLast:(LinkedListNode *)head
                                                  kTh:(NSInteger)k {
    
    LinkedListNode *fastPointer = head;
    LinkedListNode *slowPointer = head;
    
    
    for(NSInteger i = 0 ; i <= k ; i ++) {
        if (fastPointer == nil ){
            return nil;
        }
        fastPointer = fastPointer.nextNode;
    }
    
    while (fastPointer != nil) {
        fastPointer = fastPointer.nextNode;
        slowPointer = slowPointer.nextNode;
    }
    
    return @(slowPointer.value);
}


#pragma mark: - Create a Wrapper Approach

-(LinkedListNode *)wrapperClassApproachPrintKthToLast:(LinkedListNode *_Nullable)head kTh:(NSInteger)k {
    LinkedListIndex * index = [LinkedListIndex new];
    return [self wrapperClassHelperApproach:head k:k index:index];
}

- (LinkedListNode *)wrapperClassHelperApproach:(LinkedListNode *)head
                                             k:(NSInteger)k
                                         index:(LinkedListIndex *)index {
    
    if (head == nil) {
        return nil;
    }
    
    LinkedListNode *result = [self wrapperClassHelperApproach:head.nextNode k:k index:index];
    index.value = index.value + 1;
    
    if (index.value == k + 1) {
        return head;
    }
    
    return result;
}

@end


