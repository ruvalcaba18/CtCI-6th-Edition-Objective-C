//  main.m
//  Question-1
//  Created by jael ruvalcaba on 21/07/25.

#import <Foundation/Foundation.h>
#import "Remove Dumps/RemoveDumps.h"

int main(int argc, const char * argv[]) {
   
    @autoreleasepool {
        
        // Input: 7 -> 1 -> 2 -> 3 -> 2 -> 1
        LinkedListNode *node6 = [[LinkedListNode alloc] initNodeWithValue:1 nextNode:nil];
        LinkedListNode *node5 = [[LinkedListNode alloc] initNodeWithValue:2 nextNode:node6];
        LinkedListNode *node4 = [[LinkedListNode alloc] initNodeWithValue:3 nextNode:node5];
        LinkedListNode *node3 = [[LinkedListNode alloc] initNodeWithValue:2 nextNode:node4];
        LinkedListNode *node2 = [[LinkedListNode alloc] initNodeWithValue:1 nextNode:node3];
        LinkedListNode *head = [[LinkedListNode alloc] initNodeWithValue:7 nextNode:node2];
        
        NSLog(@"Original list!");
        [head printList];
        RemoveDumps *remover = [RemoveDumps new];
        
        // ---- Test: With buffer ----
        NSLog(@"\n Removing duplicates with buffer:");
        LinkedListNode *cleanWithBuffer = [remover removeDuplicatesWithExtraBuffer: head];
        [cleanWithBuffer printList];
        
        // ---- Recreate list for the second test ----
        node6 = [[LinkedListNode alloc] initNodeWithValue:1 nextNode:nil];
        node5 = [[LinkedListNode alloc] initNodeWithValue:2 nextNode:node6];
        node4 = [[LinkedListNode alloc] initNodeWithValue:3 nextNode:node5];
        node3 = [[LinkedListNode alloc] initNodeWithValue:2 nextNode:node4];
        node2 = [[LinkedListNode alloc] initNodeWithValue:1 nextNode:node3];
        head = [[LinkedListNode alloc] initNodeWithValue:7 nextNode:node2];
        
        // ---- Test: Without buffer ----
        NSLog(@"\n Removing duplicates without buffer:");
        LinkedListNode *cleanedWithoutBuffer = [remover removeDuplicatesFrom:head];
        [cleanedWithoutBuffer printList];
    }
    return 0;
}

