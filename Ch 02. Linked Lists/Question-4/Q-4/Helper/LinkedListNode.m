//  LinkedListNode.m
//  Q-3
//  Created by jael ruvalcaba on 26/07/25.

#import "LinkedListNode.h"

@implementation LinkedListNode
@synthesize nextNode, value;
 
- (nonnull instancetype)initWithValue:(NSInteger)value nextNode:(LinkedListNode * _Nullable)next {
    
    self = [super init];
    
    if (self) {
        self.value = value;
        self.nextNode = nextNode;
    }
    return self;
}

@end
