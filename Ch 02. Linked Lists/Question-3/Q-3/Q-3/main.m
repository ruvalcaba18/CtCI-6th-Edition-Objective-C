//  main.m
//  Q-3
//  Created by jael ruvalcaba on 28/07/25.

#import <Foundation/Foundation.h>
#import "LinkedListNode.h"
#import "DeleteMiddleNode.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Test Case 1: 3->5->8->5->10->2->1
        LinkedListNode *node1 = [[LinkedListNode alloc] initWithValue: 1 withNextNode: nil];
        LinkedListNode *node2 = [[LinkedListNode alloc] initWithValue: 2 withNextNode: node1];
        LinkedListNode *node3 = [[LinkedListNode alloc] initWithValue: 10 withNextNode: node2];
        LinkedListNode *node4 = [[LinkedListNode alloc] initWithValue: 5 withNextNode: node3];
        LinkedListNode *node5 = [[LinkedListNode alloc] initWithValue: 8 withNextNode: node4];
        LinkedListNode *node6 = [[LinkedListNode alloc] initWithValue :5 withNextNode: node5];
        LinkedListNode *head = [[LinkedListNode alloc] initWithValue: 3 withNextNode: node6];
        
        NSLog(@"Original List:");
        [head printList];
        
        DeleteMiddleNode *deleter = [DeleteMiddleNode new];
        LinkedListNode *result = [deleter deleteMiddleNodeFrom:head];
        
        NSLog(@"After deleting middle node:");
        [result printList];
   
    }
    return 0;
}
