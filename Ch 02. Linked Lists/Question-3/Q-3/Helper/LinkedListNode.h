//
//  LinkedListNode.h
//  Q-3
//
//  Created by jael ruvalcaba on 28/07/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class LinkedListNode;
@interface LinkedListNode : NSObject
@property (nonatomic, strong, nullable) LinkedListNode *nextNode;
@property (nonatomic, assign) NSInteger value;

-(instancetype)initWithValue:(NSInteger)value withNextNode:(LinkedListNode *_Nullable)nextNode;
@end

NS_ASSUME_NONNULL_END
