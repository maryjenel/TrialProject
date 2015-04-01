//
//  ButtonViewController.h
//  GivSum
//
//  Created by Mary Jenel Myers on 3/29/27 H.
//  Copyright (c) 27 Heisei Mary Jenel Myers. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PageContentViewController.h"

@interface ButtonViewController : UIViewController
- (IBAction)onVolunteerPressed:(id)sender;
@property (strong, nonatomic) UIPageViewController *pageViewController;
@property (strong, nonatomic) NSArray *pageTitles;
@property (strong, nonatomic) NSArray *pageImages;

@end
