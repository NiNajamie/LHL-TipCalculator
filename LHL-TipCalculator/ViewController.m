//
//  ViewController.m
//  LHL-TipCalculator
//
//  Created by Asuka Nakagawa on 2016-05-13.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *tipAmountLabel = 
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Have the calculateTip method work out what a 15% tip would be
- (IBAction)calculateTip:(UIButton *)sender {
    
    // userinput(NSString)-> (doubleValue)
    double billAmount = [self.billAmountTextField.text doubleValue];
    NSLog(@"user input was: $%.2f", billAmount);
    double calculateTip = billAmount * 1.15;
    NSLog(@"included tip: $%.2f", calculateTip);
//    [self.calculateTip calculateTip];
}

    

@end
