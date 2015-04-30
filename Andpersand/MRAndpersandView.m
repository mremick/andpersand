//
//  MRAndpersandView.m
//  Andpersand
//
//  Created by Matt Remick on 4/25/15.
//  Copyright (c) 2015 Matt Remick. All rights reserved.
//

#import "MRAndpersandView.h"

@implementation MRAndpersandView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)layoutSubviews {
    
    self.namesLabel.frame = CGRectMake(0, 0, self.frame.size.width, 500);
    self.namesLabel.font = [UIFont
                            fontWithName:@"Helvetica-Bold" size:50];
    self.namesLabel.textColor = [UIColor whiteColor];
    self.namesLabel.numberOfLines = 10;
    [self.namesLabel sizeToFit];
    [self addSubview:self.namesLabel];
}

- (UILabel *)namesLabel {
    
    if (!_namesLabel) {
        _namesLabel = [[UILabel alloc] init];
    }
    
    return _namesLabel;
}
@end
