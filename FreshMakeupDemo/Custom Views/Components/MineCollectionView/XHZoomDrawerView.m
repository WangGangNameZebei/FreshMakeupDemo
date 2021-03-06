//
//  XHZoomDrawerView.m
//  XHDrawerController
//
//  Created by 曾 宪华 on 13-12-27.
//  Copyright (c) 2013年 曾宪华 开发团队(http://iyilunba.com ) 本人QQ:543413507. All rights reserved.
//

#import "XHZoomDrawerView.h"
#import "XHDrawerControllerHeader.h"
#import "UIColor+Utility.h"
@implementation XHZoomDrawerView

#pragma mark - UIView Overrides

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {        
        _scrollView = [[UIScrollView alloc] initWithFrame:self.bounds];
        self.scrollView.scrollsToTop = NO;
        self.scrollView.bounces = NO;
        self.scrollView.scrollEnabled = NO;
        self.scrollView.showsHorizontalScrollIndicator = NO;
        self.scrollView.showsVerticalScrollIndicator = NO;
        self.scrollView.backgroundColor = [UIColor colorFromHexCode:@"#78bab7"];
        self.scrollView.contentSize = CGSizeMake((CGRectGetWidth(frame) + XHContentContainerViewOriginX * 2) - 230, CGRectGetHeight(frame));
        // 左边
        _leftContainerView = [[UIView alloc] initWithFrame:self.bounds];
        // 中间内容
        _contentContainerView = [[UIView alloc] initWithFrame:self.bounds];
        xh_UIViewSetFrameOriginX(self.contentContainerView, XHContentContainerViewOriginX);
        self.contentContainerView.layer.shadowOffset = CGSizeMake(0, 0);
        self.contentContainerView.layer.shadowOpacity = 0.8;
        self.contentContainerView.layer.shadowColor = [UIColor grayColor].CGColor;
        // 中间内容按钮
        _contentContainerButton = [UIButton buttonWithType:UIButtonTypeCustom];
        self.contentContainerButton.frame = self.contentContainerView.bounds;
        [self.contentContainerView addSubview:self.contentContainerButton];
        
        [self.scrollView setContentOffset:CGPointMake(XHContentContainerViewOriginX, 0.0f) animated:NO];
        
        [self.scrollView addSubview:self.leftContainerView];
        [self.scrollView addSubview:self.contentContainerView];
        [self addSubview:self.scrollView];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.backgroundView.frame = self.bounds;
    [self.contentContainerView bringSubviewToFront:self.contentContainerButton];
}

#pragma mark - Accessors

- (void)setBackgroundView:(UIView *)backgroundView {
    [self.backgroundView removeFromSuperview];
    _backgroundView = backgroundView;
    [self insertSubview:self.backgroundView atIndex:0];
}
@end
