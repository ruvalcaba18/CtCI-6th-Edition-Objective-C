//  RemoveDumps.m
//  Question-1
//  Created by jael ruvalcaba on 21/07/25.

/*
 
 📘 Problem:  Remove Dumps from an Unsorted Linked List

 Description:
 Write a method to remove duplicates from an unsorted singly linked list.

 Example:

 Input:

 7 -> 1 -> 2 -> 3 -> 2 -> 1 -> nil
 Expected Output:

 7 -> 1 -> 2 -> 3 -> nil
 Requirements
 Part 1:

- Implement a solution that removes duplicates using an additional buffer if needed (e.g., a hash table).

 Part 2 (Follow-Up):

-  Implement a solution without using any temporary buffer.
 
 💡 Hints:
 #9: Have you tried using a hash table? This would allow you to remove duplicates in a single pass through the list.
 #40: If you can’t use extra space, you'll need O(n²) time. Try using two pointers where the second one checks for duplicates ahead of the first.
 */

#import "RemoveDumps.h"

@implementation RemoveDumps

- (LinkedListNode *)removeDuplicatesFrom:(nonnull LinkedListNode *)head {
    
    LinkedListNode *currentNode = head;
    
    while (currentNode != nil) {
        LinkedListNode *runner = currentNode;
        
        while (runner != nil) {
            if (currentNode.value == runner.next.value) {
                runner.next = runner.next.next;
            } else {
                runner = runner.next;
            }
        }
        
        currentNode = currentNode.next;
    }
    
    return head;
}

- (LinkedListNode *)removeDuplicatesWithExtraBuffer:(nonnull LinkedListNode *)head {
    
    LinkedListNode * current = head;
    LinkedListNode * previous;
    
    NSMutableSet *set = [NSMutableSet new];
    
    while (current != nil ) {
        
        if ([set containsObject:@(current.value)]) {
            previous.next = current.next;
            
        } else {
            [set addObject:@(current.value)];
            previous = current;
        }
  
        current = current.next;
    }
    return head;
}

 + (void)printList {
    LinkedListNode *current = self;
    NSMutableString *output = [NSMutableString new];
    
    while (current != nil) {
        [output appendFormat:@"%ld", (long)current.value];
        if (current.next != nil) {
            [output appendString:@" -> "];
        }
        current = current.next;
    }
    
    NSLog(@"%@", output);
}

@end
