//
//  LinkedListNode_C_Style.m
//  Q1-1
//
//  Created by jael ruvalcaba on 18/07/25.
//  Copyright © 2025 jael ruvalcaba. All rights reserved.
//
#import "LinkedListNode_C_Style.h"
#include <stdio.h>
#include <stdlib.h>

LinkedListNode_C_Style *createNode(int value) {
    LinkedListNode_C_Style *node = malloc(sizeof(LinkedListNode_C_Style));
    node->value = value;
    node->next = NULL;
    return node;
}

void appendToTail(LinkedListNode_C_Style *head, int value) {
    LinkedListNode_C_Style *end = createNode(value);
    LinkedListNode_C_Style *current = head;
    while (current->next != NULL) {
        current = current->next;
    }
    current->next = end;
}

void printList(LinkedListNode_C_Style *head) {
    LinkedListNode_C_Style *current = head;
    while (current != NULL) {
        printf("%d -> ", current->value);
        current = current->next;
    }
    printf("NULL\n");
}

void freeList(LinkedListNode_C_Style *head) {
    while (head != NULL) {
        LinkedListNode_C_Style *temp = head;
        head = head->next;
        free((temp));
    }
}

LinkedListNode_C_Style *deleteNode(LinkedListNode_C_Style *head, int value) {
    if (head == NULL) return NULL;

    // Caso: head es el que se quiere eliminar
    if (head->value == value) {
        LinkedListNode_C_Style *next = head->next;
        free(head);
        return next;
    }

    LinkedListNode_C_Style *current = head;
    while (current->next != NULL) {
        if (current->next->value == value) {
            LinkedListNode_C_Style *toDelete = current->next;
            current->next = current->next->next;
            free(toDelete);
            break;
        }
        current = current->next;
    }

    return head;
}
