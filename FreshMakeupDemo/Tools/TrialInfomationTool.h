//
//  TrialInfomationTool.h
//  FreshMakeupDemo
//
//  Created by guoshencheng on 9/9/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TrialInfomationTool : NSObject
@property (strong, nonatomic) UIImage *avatar;
@property (strong, nonatomic) NSString *nickName;
@property (strong, nonatomic) NSString *time;
@property (strong, nonatomic) UIImage *coverImage;
@property (strong, nonatomic) NSString *descriptionText;

+ (NSArray *)ladureeTrialArray;
@end
