//  LinkedListNode.m
//  Q-2
//  Created by jael ruvalcaba on 25/07/25.


#import "LinkedListNode.h"

@implementation LinkedListNode
@synthesize nextNode, value;
- (instancetype)initWithValue:(NSInteger)value next:(LinkedListNode *)next {
    
    self = [super init];
    
    if (self) {
        self.value = value;
        self.nextNode = next;
    }
    
    return self;
}
@end
