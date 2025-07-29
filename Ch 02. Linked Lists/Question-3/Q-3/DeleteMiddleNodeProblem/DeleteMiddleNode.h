//
//  DeleteMiddleNode.h
//  Q-3
//
//  Created by jael ruvalcaba on 28/07/25.
//

#import <Foundation/Foundation.h>
#import "LinkedListNode.h"
NS_ASSUME_NONNULL_BEGIN

@interface DeleteMiddleNode : NSObject
-(LinkedListNode *_Nullable)deleteMiddleNodeFrom:(LinkedListNode *_Nullable)head;
-(LinkedListNode *_Nullable)deleteMiddleNodeKnowingLenghtFrom:(LinkedListNode *_Nullable)head;
@end

NS_ASSUME_NONNULL_END
