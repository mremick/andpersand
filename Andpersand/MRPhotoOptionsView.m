//
//  MRPhotoOptionsView.m
//  Andpersand
//
//  Created by Matt Remick on 4/25/15.
//  Copyright (c) 2015 Matt Remick. All rights reserved.
//

#import "MRPhotoOptionsView.h"
@implementation MRPhotoOptionsView 

+ (id)optionsView {
    MRPhotoOptionsView *optionsView = [[[NSBundle mainBundle] loadNibNamed:@"MRPhotoOptionsView" owner:self options:nil] lastObject];
    
    // make sure customView is not nil or the wrong class!
    if ([optionsView isKindOfClass:[MRPhotoOptionsView class]]) {
        
//        optionsView.backgroundColor = [UIColor blackColor];
//        
//        optionsView.facebookButton.clipsToBounds = YES;
//        optionsView.facebookButton.layer.cornerRadius = 30.f;
//        optionsView.facebookButton.layer.borderColor = [UIColor whiteColor].CGColor;
//        optionsView.facebookButton.layer.borderWidth = 2.f;
//        optionsView.facebookButton.backgroundColor = [UIColor whiteColor];
        return optionsView;
    }
    else {
        return nil;
    }
}

- (IBAction)shareButtonSelected:(id)sender {
    [self.delegate shareButtonSelected];
}

- (IBAction)doneButtonSeleted:(id)sender {
    [self.delegate doneButtonSelected];
}

- (void)layoutSubviews {
    //self.backgroundColor = [UIColor blackColor];

    self.facebookButton.clipsToBounds = YES;
    self.facebookButton.layer.cornerRadius = 25.f;
    self.facebookButton.layer.borderColor = [UIColor whiteColor].CGColor;
    self.facebookButton.layer.borderWidth = 2.f;
    self.facebookButton.backgroundColor = [UIColor blackColor];
    //[self.facebookButton setImage:[UIImage imageNamed:@"Facebook"] forState:UIControlStateNormal];
    
    self.twitterButton.clipsToBounds = YES;
    self.twitterButton.layer.cornerRadius = 25.f;
    self.twitterButton.layer.borderColor = [UIColor whiteColor].CGColor;
    self.twitterButton.layer.borderWidth = 2.f;
    self.twitterButton.backgroundColor = [UIColor blackColor];
    //[self.twitterButton setImage:[UIImage imageNamed:@"Twitter"] forState:UIControlStateNormal];
    
    self.saveToPhotosButton.clipsToBounds = YES;
    self.saveToPhotosButton.layer.cornerRadius = 25.f;
    self.saveToPhotosButton.layer.borderColor = [UIColor whiteColor].CGColor;
    self.saveToPhotosButton.layer.borderWidth = 2.f;
    self.saveToPhotosButton.backgroundColor = [UIColor blackColor];

    
    self.textButton.clipsToBounds = YES;
    self.textButton.layer.cornerRadius = 25.f;
    self.textButton.layer.borderColor = [UIColor whiteColor].CGColor;
    self.textButton.layer.borderWidth = 2.f;
    self.twitterButton.backgroundColor = [UIColor blackColor];

}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
