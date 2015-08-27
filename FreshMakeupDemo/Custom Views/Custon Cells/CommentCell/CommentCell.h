//
//  CommentCell.h
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/22/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>

#define COMMENT_CELL @"CommentCell"

@interface CommentCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *avatarImageView;
@property (weak, nonatomic) IBOutlet UILabel *nickNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *skinPropertyLabel;
@property (weak, nonatomic) IBOutlet UILabel *genderLabel;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;
@property (weak, nonatomic) IBOutlet UILabel *identityLabel;
@property (weak, nonatomic) IBOutlet UILabel *commentLabel;
@property (weak, nonatomic) IBOutlet UILabel *commentCountLabel;
@property (weak, nonatomic) IBOutlet UIImageView *commentImageView;
@property (weak, nonatomic) IBOutlet UILabel *approveCountLabel;
@property (weak, nonatomic) IBOutlet UIImageView *approveImageView;
@property (weak, nonatomic) IBOutlet UIView *bottomLineView;

- (void)updateWithAvater:(UIImage *)avatar nickName:(NSString *)nickName skinProperty:(NSInteger)skinProperty gender:(BOOL)isMale age:(NSString *)age identity:(NSString *)identity commentCount:(NSInteger)commentCount approveCount:(NSInteger)approveCount;

- (CGFloat)heightOfCell;

@end