//
//  LinkedListNode.h
//  Q-2
//
//  Created by jael ruvalcaba on 25/07/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class LinkedListNode;
@interface LinkedListNode : NSObject

@property (nonatomic, strong, nullable) LinkedListNode *nextNode;
@property (nonatomic, assign) NSInteger value;

-(instancetype) initWithValue:(NSInteger)value next:(LinkedListNode * _Nullable)next;
@end

NS_ASSUME_NONNULL_END
