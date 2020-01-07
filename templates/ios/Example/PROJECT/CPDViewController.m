//
//  CPDViewController.m
//  PROJECT
//
//  Created by PROJECT_OWNER on TODAYS_DATE.
//  Copyright (c) TODAYS_YEAR PROJECT_OWNER. All rights reserved.
//

#import "CPDViewController.h"

@interface CPDViewController ()

@end

@implementation CPDViewController

- (void)loadView
{
    [super loadView];
    [self setTitle:@"CPDDemo"];
    [self.view setBackgroundColor:[UIColor colorWithRed:240.0 / 255.0 green:239.0 / 255.0 blue:245.0 / 1.0 alpha:1.0]];
    
    [self reloadTestMenu];
}

- (void)reloadTestMenu
{
    self.clear();
    
    {
        NSInteger sectionType = 0;
        self.addSection(sectionType).sectionInsets(UIEdgeInsetsMake(15, 0, 0, 0));
        self.addCell(@"CPDMenuItemCell").toSection(sectionType).withDataModel(@"请添加调试项").selectedAction(^ (NSString *title) {
            UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title message:nil delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil];
            [alertView show];
        });
    }
    
    [self reloadView];
}

@end
