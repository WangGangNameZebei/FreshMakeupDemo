//
//  TrialCollectionViewCell.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/22/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "TrialCollectionViewCell.h"
#import "UIColor+Utility.h"
#import "UIScreen+Utility.h"

@implementation TrialCollectionViewCell {
    CGAffineTransform trialApproveTransform;
    CGAffineTransform trialCommentTransform;
}

- (void)updateWithAvatarImage:(UIImage *)image nickName:(NSString *)nickName time:(NSString *)time coverImage:(UIImage *)coverImage description:(NSString *)description watchCount:(NSInteger)watchCount approveCount:(NSInteger)approveCount {
    self.avatarImageVIew.image = image;
    self.nickNameLabel.text = nickName;
    self.timeLabel.text = time;
    if (coverImage) {
        self.coverImageView.image = coverImage;
    }
    self.descriptionLabel.text = description;
    self.watchCountLabel.text = [NSString stringWithFormat:@"%@", @(watchCount)];
    self.approveCountLabel.text = [NSString stringWithFormat:@"%@", @(approveCount)];
}

- (void)updateWithTrialInfomationTool:(TrialInfomationTool *)trialInfomationTool {
    [self updateWithAvatarImage:trialInfomationTool.avatar nickName:trialInfomationTool.nickName time:trialInfomationTool.time coverImage:trialInfomationTool.coverImage description:trialInfomationTool.descriptionText watchCount:[self.watchCountLabel.text integerValue] approveCount:[self.approveCountLabel.text integerValue]];
}

- (void)awakeFromNib {
    
   trialApproveTransform = self.approveImageView.transform;
   trialCommentTransform = self.watchImageView.transform;

    self.contextView.layer.borderWidth = 0.5;
    self.contextView.layer.borderColor = [[UIColor colorWithIntRed:103 green:212 blue:223] CGColor];
    self.avatarImageVIew.layer.borderWidth = 0.5;
    self.avatarImageVIew.layer.cornerRadius = self.avatarImageVIew.frame.size.width / 2;
    self.avatarImageVIew.layer.borderColor = [[UIColor colorWithIntRed:103 green:212 blue:223] CGColor];
}
- (IBAction)onClickTrialCollectionButton:(id)sender {
    CGAffineTransform transform = trialCommentTransform;
    transform = CGAffineTransformScale(transform, 1.2, 1.2);
    [UIView animateWithDuration:0.1 animations:^{
        self.watchImageView.transform = transform;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.1 animations:^{
            self.watchImageView.transform = trialCommentTransform;
        } completion:^(BOOL finished) {
            
        }];
    }];

}


- (IBAction)onClickTrialApproveButton:(id)sender {
    CGAffineTransform transform = trialApproveTransform;
    transform = CGAffineTransformScale(transform, 1.2, 1.2);
    [UIView animateWithDuration:0.1 animations:^{
        self.approveImageView.transform = transform;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.1 animations:^{
            self.approveImageView.transform = trialApproveTransform;
        } completion:^(BOOL finished) {
            NSInteger praiseCountLeft = [self.approveCountLabel.text integerValue];
            if (praiseCountLeft == 9608) {
                self.approveCountLabel.text = @"9609";
                self.approveImageView.image = [UIImage imageNamed:@"detail_approve_clicked_icon.png"];
                self.approveCountLabel.textColor = [UIColor colorFromHexCode:@"#EA5E42"];
            } else {
                self.approveCountLabel.text = @"9608";
                self.approveImageView.image = [UIImage imageNamed:@"detail_approve_icon.png"];
                self.approveCountLabel.textColor = [UIColor grayColor];
                
            }
            
        }];
    }];

}
- (CGSize)sizeOfCell{
    
    return CGSizeMake([UIScreen screenWidth] / 2, 265);
}
@end
