//
//  RemoveDumps.h
//  Question-1
//
//  Created by jael ruvalcaba on 21/07/25.


#import <Foundation/Foundation.h>
#import "LinkedListNode.h"

NS_ASSUME_NONNULL_BEGIN

@interface RemoveDumps : NSObject
-(LinkedListNode *)removeDuplicatesFrom:(LinkedListNode*) head;
-(LinkedListNode *)removeDuplicatesWithExtraBuffer:(LinkedListNode *)head;
@end

NS_ASSUME_NONNULL_END
