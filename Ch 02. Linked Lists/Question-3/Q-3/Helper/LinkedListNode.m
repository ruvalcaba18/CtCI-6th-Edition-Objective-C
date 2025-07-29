//
//  LinkedListNode.m
//  Q-3
//
//  Created by jael ruvalcaba on 28/07/25.
//

#import "LinkedListNode.h"

@implementation LinkedListNode
@synthesize nextNode, value;

- (instancetype)initWithValue:(NSInteger)value withNextNode:(LinkedListNode *_Nullable)nextNode {
    self = [super init];
    if (self) {
        self.value = value;
        self.nextNode = nextNode;
    }
    return self;
}
@end
