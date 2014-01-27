//
//  NSArray+Category.h
//  foundationLearn
//
//  Created by dacaiguoguo on 14-1-27.
//  Copyright (c) 2014年 dacaiguoguo. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSArray (Category)
- (NSArray *)reverseArray;
- (NSArray *)sortArray;
// 在查找前请确定是有序的数组，可执行sortArray进行排序
- (NSInteger)binarySearchingArray:(NSString *)something;
- (NSInteger)binarySearchingArrayFirstEqual:(NSString *)something;
- (NSInteger)binarySearchingArrayLastEqual:(NSString *)something;
- (NSInteger)binarySearchingArrayInsertionIndex:(NSString *)something;
//没有返回值，用callback block 回传信息
#if NS_BLOCKS_AVAILABLE
typedef void (^SearchResult)(NSString *searchWord,NSUInteger indx, BOOL isFound);
typedef void (^InsertionResult)(NSString *insertionWord,NSUInteger indx);
- (void)binarySearchingArray:(NSString *)something callBack:(SearchResult)aCallBack;
- (void)binarySearchingArrayFirstEqual:(NSString *)something callBack:(SearchResult)aCallBack;
- (void)binarySearchingArrayLastEqual:(NSString *)something callBack:(SearchResult)aCallBack;
- (void)binarySearchingArrayInsertionIndex:(NSString *)something callBack:(InsertionResult)aCallBack;
#endif
@end
