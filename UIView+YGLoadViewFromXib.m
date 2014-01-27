//
//  UIView+YGLoadViewFromXib.m
//  LvmmPad
//
//  Created by dacaiguoguo on 14-1-23.
//  Copyright (c) 2014年 dacaiguoguo. All rights reserved.
//

#import "UIView+YGLoadViewFromXib.h"

@implementation UIView (YGLoadViewFromXib)

+ (instancetype)loadViewFromXib:(NSString *)xibName viewClass:(Class)viewClass atIndex:(NSUInteger)index{
    UIView *ret = nil;
    int zeroIndex = 0;
    NSArray *nibs = [[NSBundle mainBundle] loadNibNamed:xibName owner:nil options:nil];
    for (int i=0; i<nibs.count; i++) {
        UIView *test =  nibs[i];
        if (test.class == viewClass) {
            if (index == zeroIndex) {
                ret = test;
                break;
            }
            zeroIndex++;
            
        }
    }
    return ret;
}


+ (instancetype)loadViewFromXib:(NSString *)xibName viewClass:(Class)viewClass{
    
    return [self loadViewFromXib:xibName viewClass:viewClass atIndex:0];
}

+ (instancetype)loadViewFromXib:(NSString *)xibName{
    
    return [self loadViewFromXib:xibName viewClass:[self class] atIndex:0];
}
@end
