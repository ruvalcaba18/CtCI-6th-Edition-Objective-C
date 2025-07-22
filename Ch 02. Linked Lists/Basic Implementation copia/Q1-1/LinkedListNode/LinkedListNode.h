//
//  LinkedListNode.h
//  Created by jael ruvalcaba on 17/07/25.
//  Copyright © 2025 Alexey Golikov. All rights reserved.

/*
 Implementation of a basic singly linked list node in Objective-C.
 
 Each node holds an integer `value` and a pointer to the `next` node.
 
 `appendToTail:` is a helper method that traverses the list starting
 from the current node until it reaches the last node (`next == nil`),
 and then appends a new node to the end of the list.
 
 `deleteNode:` removes the first node in the list that matches a given value.
 If the node to be deleted is the head node, it returns `head.next` as the new head.
 Otherwise, it traverses the list and updates the `next` pointer of the previous node
 to skip the node containing the target value. If no node matches, the original head is returned.
 **/

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class LinkedListNode;
@interface LinkedListNode : NSObject

/// Pointer to the next node in the list
@property(nonatomic, weak) LinkedListNode *_Nullable  next;
/// Integer value stored in the node
@property (nonatomic, assign) NSInteger value;

/// Initializes a new node with the given value and optional next node
- (instancetype) initNodeWithValue:(NSInteger)value nextNode:(LinkedListNode *_Nullable) next;

/// Appends a new node with the specified value to the end of the list
- (void)appendToTail:(NSInteger)value;

/// Deletes the first node in the list containing the specified value
/// @param head The head of the list (can be self)
/// @param value The value to delete
/// @return The potentially new head of the list
- (LinkedListNode *)deleteNode:(LinkedListNode *)head value:(NSInteger)value;

/// Prints the values in the list starting from the given head node
+ (void)printList:(LinkedListNode *)head;

@end

NS_ASSUME_NONNULL_END
