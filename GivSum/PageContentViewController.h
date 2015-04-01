//
//  PageContentViewController.h
//  GivSum
//
//  Created by Mary Jenel Myers on 3/29/27 H.
//  Copyright (c) 27 Heisei Mary Jenel Myers. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PageContentViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *volunteerImage;
@property (weak, nonatomic) IBOutlet UITextView *volunteerLabel;
@property NSUInteger pageIndex;
@property NSString *volunteerText;
@property NSString *imageFile;

@end
