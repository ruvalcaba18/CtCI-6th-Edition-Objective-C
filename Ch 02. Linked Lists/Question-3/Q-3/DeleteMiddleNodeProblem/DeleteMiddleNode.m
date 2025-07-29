//  DeleteMiddleNode.m
//  Q-3
//  Created by jael ruvalcaba on 28/07/25.


#import "DeleteMiddleNode.h"

#pragma mark: - Private methods
@interface DeleteMiddleNode()
-(NSInteger)lenghtOfList:(LinkedListNode *)head;
@end

#pragma mark: - Implementation
@implementation DeleteMiddleNode

- (LinkedListNode * _Nullable)deleteMiddleNodeFrom:(LinkedListNode * _Nullable)head {
    
    if (head == nil || head.nextNode == nil) {
        return nil;
    }
    
    LinkedListNode *fastPointer = head;
    LinkedListNode *slowPointer = head;
    LinkedListNode *_Nullable previous = nil;
    
    while (fastPointer != nil && fastPointer.nextNode != nil  ) {
        fastPointer = fastPointer.nextNode.nextNode;
        previous = slowPointer;
        slowPointer = slowPointer.nextNode;
    }
    
    previous.nextNode = slowPointer.nextNode;
    
    return head;
}

- (LinkedListNode *_Nullable)deleteMiddleNodeKnowingLenghtFrom:(LinkedListNode *_Nullable)head {
    
    if (head == nil || head.nextNode == nil) {
        return nil;
    }
    
    NSInteger length = [self lenghtOfList:head];
    NSInteger middleIndex = length/2;
    
    if (middleIndex == 0) {
        return head.nextNode;
    }
    
    LinkedListNode *current = head;
    
    for(NSInteger i = 0 ; i < middleIndex - 1 ; i ++) {
        current = current.nextNode;
    }
    
    current.nextNode = current.nextNode.nextNode;
    
    return head;
}

- (NSInteger)lenghtOfList:(LinkedListNode *)head {
    
    if (head == nil) {
        return 0;
    }
    NSInteger count = 0;
    LinkedListNode *current = head;
    
    while (current != nil) {
        count++;
        current = current.nextNode;
    }
    
    return count;
}
@end
