//
//  CopywriterCell.h
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/22/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#define COPY_WRITER_CELL @"CopywriterCell"

@interface CopywriterCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UILabel *contentLabel;

- (void)updateWithContentText:(NSString *)contentText;
- (CGFloat)heightOfCell;
- (CGSize)sizeOfCell;

@end
