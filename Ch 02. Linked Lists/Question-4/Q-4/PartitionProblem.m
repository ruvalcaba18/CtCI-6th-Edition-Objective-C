//  PartitionProblem.m
//  Q-4
//  Created by jael ruvalcaba on 26/07/25.

#import "PartitionProblem.h"

@implementation PartitionProblem


- (LinkedListNode * _Nullable)longApproachPartitionProblem:(LinkedListNode * _Nullable)head partitionValue:(NSInteger)partitionValue {
    
    LinkedListNode *current = head;
    LinkedListNode *beforeHead = nil;
    LinkedListNode *afterHead = nil;
    LinkedListNode *beforeTail = nil;
    LinkedListNode *afterTail = nil;
    
    while (current != nil) {
        
        LinkedListNode *next = current.nextNode;
        current.nextNode = nil ;
        
        if (current.value <= partitionValue) {
            
            if (beforeHead == nil) {
                beforeHead = current;
                beforeTail = beforeHead;
            } else{
                beforeTail.nextNode = current;
                beforeTail = current;
            }
            
        } else {
            
            if (afterHead == nil) {
                afterHead = current;
                afterTail = afterHead;
            } else {
                afterTail.nextNode = current;
                afterTail = current;
            }
        }
        current = next;
    }
    
    if (beforeHead != nil) {
        beforeTail.nextNode = afterHead;
        return beforeHead;
    } else {
        return afterHead;
    }
}

- (LinkedListNode * _Nullable)shortApproachPartitionProblem:(LinkedListNode * _Nullable)head partitionValue:(NSInteger)value {
    
    if (head == nil) {
        return nil;
    }
    
    LinkedListNode * tempHead = head;
    LinkedListNode * tempTail = head;
    LinkedListNode * current = head;
    
    while (current != nil ) {
        
        LinkedListNode *next = current.nextNode;
        
        if (current.value <= value) {
            current.nextNode = tempHead;
            tempHead = current;
        } else {
            tempTail.nextNode = current;
            tempTail = current;
            tempTail.nextNode = nil;
        }
        
        current = next;
    }
    tempTail.nextNode = nil ;
    return tempHead;
}

@end
