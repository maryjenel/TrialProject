//
//  LocationViewController.m
//  
//
//  Created by Mary Jenel Myers on 3/31/27 H.
//
//

#import "LocationViewController.h"

#import "LocationLabel.h"


@interface LocationViewController ()
@property (strong, nonatomic) NSArray *textArray;
@property (assign, nonatomic) NSUInteger textIndex;
@property LocationLabel *locationLabel;

@end

@implementation LocationViewController

- (id)initWithCoder:(NSCoder *)decoder
{
    if (self = [super initWithCoder:decoder]) {
        _textArray = @[
                       @"we need to know",
                       @"where you are so that we can find",
                       @"nearby opportunities for you!"
                       ];
        _textIndex  = 0;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.locationLabel = ({
      LocationLabel *label = [[LocationLabel alloc] initWithFrame:CGRectMake(16, 16, 320 - 32, CGRectGetHeight(self.view.bounds) - 16)];
        label.numberOfLines = 0;
        label.text = [self.textArray objectAtIndex:self.textIndex];
        label.font = [UIFont fontWithName:@"HelveticaNeue-Light" size:24.0];
        label.backgroundColor = [UIColor clearColor];
        [label sizeToFit];
        label.center = self.view.center;
        label;
    });
    [self.view addSubview:self.locationLabel];
}
- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    self.view.backgroundColor = [UIColor orangeColor];
    [self.locationLabel shine];
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    // [super touchesBegan:touches withEvent:event];
    // if (self.shineLabel.isVisible) {
    // [self.shineLabel fadeOutWithCompletion:^{
    // [self changeText];
    // [UIView animateWithDuration:2.5 animations:^{
    // if (self.wallpaper1.alpha > 0.1) {
    // self.wallpaper1.alpha = 0;
    // self.wallpaper2.alpha = 1;
    // }
    // else {
    // self.wallpaper1.alpha = 1;
    // self.wallpaper2.alpha = 0;
    // }
    // }];
    // [self.shineLabel shine];
    // }];
    // }
    // else {
    // [self.shineLabel shine];
    // }
    [self.locationLabel fadeOut];
    [self.locationLabel shine];
}
- (void)changeText
{
    self.locationLabel.text = self.textArray[(++self.textIndex) % self.textArray.count];
}
-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}
@end


