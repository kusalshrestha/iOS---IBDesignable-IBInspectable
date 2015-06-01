//
//  CustomView.h
//  IBDesignable
//
//  Created by shrstha kusal on 6/1/15.
//  Copyright (c) 2015 shrstha kusal. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface CustomView : UIView

@property (strong, nonatomic) UIView *customView;
@property (strong, nonatomic) IBInspectable UIColor *bgColor;

@end
