//
//  MRAndpersandViewController.m
//  Andpersand
//
//  Created by Matt Remick on 4/25/15.
//  Copyright (c) 2015 Matt Remick. All rights reserved.
//

#import "MRAndpersandViewController.h"
#import "MRAndpersandView.h"
#import "MRPhotoOptionsView.h"
#import <QuartzCore/QuartzCore.h>
@interface MRAndpersandViewController () <MRShareButtonDelegate>
@property (weak, nonatomic) IBOutlet MRAndpersandView *andpersandView;
@property (strong, nonatomic) MRPhotoOptionsView *photoOptionsView;

@end

@implementation MRAndpersandViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.photoOptionsView = [MRPhotoOptionsView optionsView];
    self.photoOptionsView.delegate = self;
}

- (void)viewWillAppear:(BOOL)animated {
    
    NSString *finalNamesString = [NSString new];
    
    for (int i = 0; i < self.namesArray.count; i++) {
        NSString *currentName = [self.namesArray objectAtIndex:i];
        finalNamesString = [finalNamesString stringByAppendingString:currentName];
        finalNamesString = i == self.namesArray.count - 1 ? [finalNamesString stringByAppendingString:@"."] :[finalNamesString stringByAppendingString:@"&"];
        finalNamesString = [finalNamesString stringByAppendingString:@"\n"];
    }
    
    self.andpersandView.namesLabel.text = finalNamesString;
    
    self.photoOptionsView.hidden = YES;


    
    [self.view addSubview:self.photoOptionsView];

 
//    optionsView.facebookButton.backgroundColor = [UIColor redColor];
//    optionsView.backgroundColor = [UIColor blueColor];
    
    [UIView animateWithDuration:0.1f animations:^{
        self.photoOptionsView.frame = CGRectMake(0, self.view.frame.size.height + 150, self.view.frame.size.width, 132);

    } completion:^(BOOL finished) {
        self.photoOptionsView.hidden = NO;
        [UIView animateWithDuration:1.f animations:^{
            self.photoOptionsView.frame = CGRectMake(0, self.view.frame.size.height - 132, self.view.frame.size.width, 132);
        }];
    }];
}

- (void)shareButtonSelected {
    
    UIImage *finalImage = [self imageWithView:self.andpersandView];
    
    UIActivityViewController *activityViewController =
    [[UIActivityViewController alloc] initWithActivityItems:@[finalImage]
                                      applicationActivities:nil];
    [self.navigationController presentViewController:activityViewController
                                       animated:YES
                                     completion:^{
                                         // ...
                                     }];
    
}

- (UIImage *) imageWithView:(UIView *)view
{
    UIGraphicsBeginImageContextWithOptions(view.bounds.size, view.opaque, 0.0);
    [view.layer renderInContext:UIGraphicsGetCurrentContext()];
    
    UIImage * img = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return img;
}

- (void)doneButtonSelected {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
