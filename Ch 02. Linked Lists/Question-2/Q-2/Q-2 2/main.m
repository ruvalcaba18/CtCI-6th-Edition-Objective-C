//  main.m
//  Q-2
//  Created by jael ruvalcaba on 25/07/25.

#import <Foundation/Foundation.h>
#import "LinkedListNode.h"
#import "KthToLastProblem.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        LinkedListNode *node1 = [[LinkedListNode alloc] initWithValue: 1 next: nil];
        LinkedListNode *node2 = [[LinkedListNode alloc] initWithValue: 2 next: nil];
        LinkedListNode *node3 = [[LinkedListNode alloc] initWithValue: 3 next: nil];
        LinkedListNode *node4 = [[LinkedListNode alloc] initWithValue: 4 next: nil];
        LinkedListNode *node5 = [[LinkedListNode alloc] initWithValue: 5 next: nil];
        
        node1.nextNode = node2;
        node2.nextNode = node3;
        node3.nextNode = node4;
        node4.nextNode = node5;
        
        
        KthToLastProblem *solver = [[KthToLastProblem alloc] init];
        
        
        NSInteger k = 0;
        
        NSNumber *recursiveResult = [solver recursiveApproachPrintKthToLast: node1 kTh: k];
        NSNumber *iterativeResult = [solver iterativeApproachPrintKthToLast: node1 kTh: k];
        LinkedListNode *wrapperResult = [solver wrapperClassApproachPrintKthToLast: node1 kTh: k];
        
        NSLog(@"Recursive result: %@", recursiveResult);
        NSLog(@"Iterative result: %@", iterativeResult);
        NSLog(@"Wrapper result: %ld", (long)wrapperResult.value);
    }
    return 0;
}
