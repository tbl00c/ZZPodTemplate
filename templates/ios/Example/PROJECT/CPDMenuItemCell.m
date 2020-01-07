//
//  CPDMenuItemCell.m
//  PROJECT
//
//  Created by PROJECT_OWNER on TODAYS_DATE.
//  Copyright (c) TODAYS_YEAR PROJECT_OWNER. All rights reserved.
//

#import "CPDMenuItemCell.h"

@interface CPDMenuItemCell ()

@property (nonatomic, strong) UILabel *titleLabel;

@end

@implementation CPDMenuItemCell

+ (CGFloat)viewHeightByDataModel:(id)dataModel
{
    return 52.0f;
}

- (void)setViewDataModel:(id)dataModel
{
    [self.titleLabel setText:dataModel];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self setBackgroundColor:[UIColor whiteColor]];
        
        self.titleLabel = self.contentView.addLabel(1)
        .font([UIFont boldSystemFontOfSize:18]).textColor([UIColor blackColor])
        .frame(CGRectMake(15, (52 - 18) / 2.0, frame.size.width - 30, 18))
        .view;
    }
    return self;
}

@end