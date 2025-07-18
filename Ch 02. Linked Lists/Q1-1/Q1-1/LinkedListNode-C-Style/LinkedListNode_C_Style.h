//
//  LinkedListNode_C_Style.h
//  Q1-1
//
//  Created by jael ruvalcaba on 18/07/25.
//  Copyright © 2025 Alexey Golikov. All rights reserved.
//

#import <Foundation/Foundation.h>

#ifndef LinkedListNode_C_Style_h
#define LinkedListNode_C_Style_h

typedef struct  LinkedListNode_C_Style {
    int value;
    struct LinkedListNode_C_Style *next;
} LinkedListNode_C_Style;

void appendToTail(LinkedListNode_C_Style *head, int value);
void printList(LinkedListNode_C_Style *head);
void freeList(LinkedListNode_C_Style *head);

LinkedListNode_C_Style *deleteNode(LinkedListNode_C_Style *head, int value);
#endif
