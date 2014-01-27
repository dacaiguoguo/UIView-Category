//
//  NSArray+Category.h
//  foundationLearn
//
//  Created by dacaiguoguo on 14-1-27.
//  Copyright (c) 2014年 dacaiguoguo. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void (^SearchResult)(NSString *searchWord,NSUInteger indx, BOOL isFound);
@interface NSArray (Category)
- (NSArray *)reverseArray;
- (NSArray *)sortArray;
// 在查找前请确定是有序的数组，可执行sortArray进行排序
- (NSInteger)binarySearchingArray:(NSString *)something;
- (void)binarySearchingArray:(NSString *)something callBack:(SearchResult)aCallBack;
- (NSInteger)binarySearchingArrayFirstEqual:(NSString *)something;
- (NSInteger)binarySearchingArrayLastEqual:(NSString *)something;
- (NSInteger)binarySearchingArrayInsertionIndex:(NSString *)something;
@end
