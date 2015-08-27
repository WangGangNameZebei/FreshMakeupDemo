//
//  HomeViewController+Animation.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/20/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "HomeViewController+Animation.h"
#import "UINavigationController+CustomNavigationController.h"
#import "DetailViewController.h"

@implementation HomeViewController (Animation)

- (void)recoverAllComponent {
    [UIView animateWithDuration:0.2 animations:^{
        self.updateTimeLabel.alpha = 1;
        self.updateTimeImageView.alpha = 1;
        self.downGuideImageView.alpha = 1;
    } completion:^(BOOL finished) {
        [self.downGuideImageView startAnimating];
    }];
}

- (void)animatePushDetailViewController {
    self.bookAnimationView.hidden = NO;
    [self.downGuideImageView stopAnimating];
    self.downGuideImageView.hidden = YES;
    DetailViewController *detailViewController = [DetailViewController create];
    [self.bookAnimationView animationOpenBookcompletion:^(BOOL finished) {
        [self.navigationController pushViewController:detailViewController animated:NO];
    }];
}

@end
