//
//  NSArray+Category.m
//  foundationLearn
//
//  Created by dacaiguoguo on 14-1-27.
//  Copyright (c) 2014年 dacaiguoguo. All rights reserved.
//

#import "NSArray+Category.h"

@implementation NSArray (Category)
- (NSArray *)reverseArray{
    NSArray *reverseArray = self.reverseObjectEnumerator.allObjects;
    return reverseArray;
}

- (NSArray *)sortArray{
    NSArray *sortReturnArray = [self sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        return [obj1 localizedStandardCompare:obj2];
    }];
    return sortReturnArray;
}

- (NSInteger)binarySearchingArray:(NSString *)something{
    return [self binarySearchingArrayFirstEqual:something];
}

- (NSInteger)binarySearchingArrayFirstEqual:(NSString *)something{
    return [self indexOfObject:something inSortedRange:NSMakeRange(0, self.count) options:NSBinarySearchingFirstEqual usingComparator:^NSComparisonResult(id obj1, id obj2) {
        return [obj1 localizedStandardCompare:obj2];
    }];
}

- (NSInteger)binarySearchingArrayLastEqual:(NSString *)something{
    return [self indexOfObject:something inSortedRange:NSMakeRange(0, self.count) options:NSBinarySearchingLastEqual usingComparator:^NSComparisonResult(id obj1, id obj2) {
        return [obj1 localizedStandardCompare:obj2];
    }];
}

- (NSInteger)binarySearchingArrayInsertionIndex:(NSString *)something{
    return [self indexOfObject:something inSortedRange:NSMakeRange(0, self.count) options:NSBinarySearchingInsertionIndex usingComparator:^NSComparisonResult(id obj1, id obj2) {
        return [obj1 localizedStandardCompare:obj2];
    }];
}

- (void)binarySearchingArray:(NSString *)something callBack:(SearchResult)aCallBack{
    NSInteger findIndx = [self binarySearchingArrayFirstEqual:something];
    aCallBack ? aCallBack(something,findIndx,findIndx==NSNotFound):NULL;
}

- (void)binarySearchingArrayFirstEqual:(NSString *)something callBack:(SearchResult)aCallBack{
    NSInteger findIndx = [self binarySearchingArrayFirstEqual:something];
    aCallBack ? aCallBack(something,findIndx,findIndx==NSNotFound):NULL;
}

- (void)binarySearchingArrayLastEqual:(NSString *)something callBack:(SearchResult)aCallBack{
    NSInteger findIndx = [self binarySearchingArrayLastEqual:something];
    aCallBack ? aCallBack(something,findIndx,findIndx==NSNotFound):NULL;
}

- (void)binarySearchingArrayInsertionIndex:(NSString *)something callBack:(InsertionResult)aCallBack{
    NSInteger findIndx = [self binarySearchingArrayInsertionIndex:something];
    aCallBack ? aCallBack(something,findIndx):NULL;
}

@end
