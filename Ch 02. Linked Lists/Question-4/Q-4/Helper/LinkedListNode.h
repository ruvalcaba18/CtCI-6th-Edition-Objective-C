//  LinkedListNode.h
//  Q-4
//  Created by jael ruvalcaba on 26/07/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class LinkedListNode;
@interface LinkedListNode : NSObject

@property (nonatomic, nullable, strong) LinkedListNode *nextNode;
@property (nonatomic, assign) NSInteger value;

-(instancetype)initWithValue:(NSInteger) value nextNode:(LinkedListNode *_Nullable) next;
@end

NS_ASSUME_NONNULL_END
