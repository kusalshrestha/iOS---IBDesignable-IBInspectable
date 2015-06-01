//
//  CustomView.m
//  IBDesignable
//
//  Created by shrstha kusal on 6/1/15.
//  Copyright (c) 2015 shrstha kusal. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        //
        [self loadNib];
    }
    return self;
}

- (void)prepareForInterfaceBuilder {
    [self loadNib];
}

- (void)loadNib {
    self.customView = [[[NSBundle bundleForClass:[self class]] loadNibNamed:@"View" owner:self options:nil] firstObject];
    [self addSubview:self.customView];
    self.customView.frame = self.bounds;
    
    self.customView.backgroundColor = self.bgColor;
}

@end
