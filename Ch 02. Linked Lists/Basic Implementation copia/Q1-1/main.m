//
//  main.m
//  Q1-1
//
//  Created by Jael Ruvalcaba on 17/07/25.
//  Copyright © 2025 Jael Ruvalcaba. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "LinkedListNode/LinkedListNode.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        LinkedListNode *head = [[LinkedListNode alloc] initNodeWithValue:[@1 integerValue] nextNode:nil];
        [head appendToTail: [@2 integerValue] ];
        [head appendToTail: [@3 integerValue] ];
        
        [LinkedListNode printList:head];
        head = [head deleteNode:head value:2];
        [LinkedListNode printList:head];
    }

    return 0;
}
