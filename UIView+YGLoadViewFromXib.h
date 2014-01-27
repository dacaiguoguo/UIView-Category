//
//  UIView+YGLoadViewFromXib.h
//  LvmmPad
//
//  Created by dacaiguoguo on 14-1-23.
//  Copyright (c) 2014年 dacaiguoguo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (YGLoadViewFromXib)

+ (instancetype)loadViewFromXib:(NSString *)xibName viewClass:(Class)viewClass atIndex:(NSUInteger)index;

+ (instancetype)loadViewFromXib:(NSString *)xibName viewClass:(Class)viewClass;

+ (instancetype)loadViewFromXib:(NSString *)xibName;
@end
