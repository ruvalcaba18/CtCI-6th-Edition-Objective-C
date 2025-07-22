//
//  LinkedListNode.m
//
//  Created by jael ruvalcaba on 17/07/25.
//  Copyright © 2025 Alexey Golikov. All rights reserved.

/*
 The code below implements a very basic single linked list
 **/

#import "LinkedListNode.h"

@implementation LinkedListNode
@synthesize value, next;

- (nonnull instancetype)initNodeWithValue:(NSInteger)value
                                 nextNode:(LinkedListNode * _Nullable)next {
    
    self = [super init];
    
    if (self) {
        self.next = next;
        self.value = value;
    }
    
    return self;
}


- (void)appendToTail:(NSInteger)value {
    LinkedListNode *newNode = [[LinkedListNode alloc] initNodeWithValue:value nextNode: nil];
    
    LinkedListNode *node = self;
    
    while (node.next != nil ) {
        node = node.next;
    }
    
    node.next = newNode;
}

- (nonnull LinkedListNode *)deleteNode:(nonnull LinkedListNode *)head value:(NSInteger)value {
    
    LinkedListNode *current = head;
    
    if (current.value == value ) {
        return current.next;
    }
    
    while (current.next != nil)  {
        if (current.value == value) {
            current.next = current.next.next;
            return head;
        }
        current = current.next;
    }
    
    return head;
}

+ (void)printList:(nonnull LinkedListNode *)head {
    
    LinkedListNode *current = head;
    NSMutableString *outuput = [NSMutableString string];
    
    while (current != nil ) {
        [outuput appendFormat:@"%ld ->", (long)current.value];
        current = current.next;
    }
    
    [outuput appendString:@"NULL"];
    NSLog(@"%@",outuput);
}

@end
