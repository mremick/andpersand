//
//  MRPhotoOptionsView.h
//  Andpersand
//
//  Created by Matt Remick on 4/25/15.
//  Copyright (c) 2015 Matt Remick. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MRShareButtonDelegate <NSObject>

- (void)shareButtonSelected;
- (void)doneButtonSelected; 

@end

@interface MRPhotoOptionsView : UIView
@property (weak, nonatomic) IBOutlet UIButton *facebookButton;
@property (weak, nonatomic) IBOutlet UIButton *twitterButton;
@property (weak, nonatomic) IBOutlet UIButton *textButton;
@property (weak, nonatomic) IBOutlet UIButton *saveToPhotosButton;
@property (nonatomic, weak) id<MRShareButtonDelegate>delegate;

+ (id)optionsView; 
- (IBAction)shareButtonSelected:(id)sender;
- (IBAction)doneButtonSeleted:(id)sender;

@end
