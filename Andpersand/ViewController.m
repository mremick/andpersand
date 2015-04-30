//
//  ViewController.m
//  Andpersand
//
//  Created by Matt Remick on 4/25/15.
//  Copyright (c) 2015 Matt Remick. All rights reserved.
//

#import "ViewController.h"
#import "MRAndpersandViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameField1;
@property (weak, nonatomic) IBOutlet UITextField *nameField2;
@property (weak, nonatomic) IBOutlet UITextField *nameField3;
@property (weak, nonatomic) IBOutlet UITextField *nameField4;
@property (weak, nonatomic) IBOutlet UITextField *nameField5;
- (IBAction)generateSelecyed:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIToolbar* numberToolbar = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, 320, 50)];
    numberToolbar.barStyle = UIBarStyleBlackTranslucent;
    numberToolbar.items = [NSArray arrayWithObjects:
                           [[UIBarButtonItem alloc]initWithTitle:@"Cancel" style:UIBarButtonItemStyleBordered target:self action:@selector(doneWithNumberPad)],
                           [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil],
                           [[UIBarButtonItem alloc]initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self action:@selector(doneWithNumberPad)],
                           nil];
    [numberToolbar sizeToFit];
    self.nameField1.inputAccessoryView = numberToolbar;
    self.nameField2.inputAccessoryView = numberToolbar;
    self.nameField3.inputAccessoryView = numberToolbar;
    self.nameField4.inputAccessoryView = numberToolbar;
    self.nameField5.inputAccessoryView = numberToolbar;
    

}

- (void)doneWithNumberPad {
    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)generateSelecyed:(id)sender {
    
    
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"toAndpersand"]) {
        
        MRAndpersandViewController *cv = [segue destinationViewController];
        cv.namesArray = [[NSMutableArray alloc] init];
        
        if (self.nameField1.text.length > 0) {
            [cv.namesArray addObject:self.nameField1.text];
        }
        if (self.nameField2.text.length > 0) {
            [cv.namesArray addObject:self.nameField2.text];
        }
        if (self.nameField3.text.length > 0) {
            [cv.namesArray addObject:self.nameField3.text];
        }
        if (self.nameField4.text.length > 0) {
            [cv.namesArray addObject:self.nameField4.text];
        }
        if (self.nameField5.text.length > 0) {
            [cv.namesArray addObject:self.nameField5.text];
        }
        
    }
    
    
}
@end
