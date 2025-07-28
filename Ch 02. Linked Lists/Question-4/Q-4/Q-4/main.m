//  main.m
//  Q-4
//  Created by jael ruvalcaba on 26/07/25.

#import <Foundation/Foundation.h>
#import "LinkedListNode.h"
#import "PartitionProblem.h"

/*
EXAMPLE
Input:  3 -> 5 -> 8 -> 5 -> 10 -> 2 -> 1 [partition= 5]
Output:  3 -> 1 -> 2 -> 10 -> 5 -> 5 -> 8
 */

void printList(LinkedListNode *node) {
    NSMutableString *output = [NSMutableString string];
    while (node != nil) {
        [output appendFormat:@"%ld -> ", (long)node.value];
        node = node.nextNode;
    }
    [output appendString:@"nil"];
    NSLog(@"%@", output);
}

LinkedListNode* buildTestList(void) {
    LinkedListNode *node3 = [[LinkedListNode alloc] initWithValue:3 nextNode:nil];
    LinkedListNode *node5a = [[LinkedListNode alloc] initWithValue:5 nextNode:nil];
    LinkedListNode *node8 = [[LinkedListNode alloc] initWithValue:8 nextNode:nil];
    LinkedListNode *node5b = [[LinkedListNode alloc] initWithValue:5 nextNode:nil];
    LinkedListNode *node10 = [[LinkedListNode alloc] initWithValue:10 nextNode:nil];
    LinkedListNode *node2 = [[LinkedListNode alloc] initWithValue:2 nextNode:nil];
    LinkedListNode *node1 = [[LinkedListNode alloc] initWithValue:1 nextNode:nil];
    
    // Establecer los nextNode en el orden correcto
    node3.nextNode = node5a;
    node5a.nextNode = node8;
    node8.nextNode = node5b;
    node5b.nextNode = node10;
    node10.nextNode = node2;
    node2.nextNode = node1;
    
    return node3;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        PartitionProblem *solver = [PartitionProblem new];
        NSInteger partitionValue = 5;
        LinkedListNode *testList = buildTestList();
        NSLog(@"original List:");
        printList(testList);

        LinkedListNode *longSolution = [solver longApproachPartitionProblem: testList partitionValue: partitionValue];
        NSLog(@"Long solution List:");
        printList(longSolution);
        
        testList = buildTestList();
        LinkedListNode *shortSolution = [solver shortApproachPartitionProblem: testList partitionValue: partitionValue];
        NSLog(@"Short solution List:");
        printList(shortSolution);
    }
    return 0;
}


