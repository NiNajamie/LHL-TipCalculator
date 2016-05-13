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
@property (weak, nonatomic) IBOutlet UITextField *tipPercentageTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Have the calculateTip method work out what a 15% tip would be
- (IBAction)calculateTip:(UIButton *)sender {
    
    // take tip (15) and make it into percentage (1.15)
    double tipPercentage = [self.tipPercentageTextField.text doubleValue] / 100.0 + 1;
    NSLog(@"user inputs tipPercentage: %.2f",tipPercentage);
    
    // userinput(NSString)-> (doubleValue)
    double billAmount = [self.billAmountTextField.text doubleValue] ;
    NSLog(@"user input was: $%.2f", billAmount);
    double calculateTip = billAmount * tipPercentage;
    NSLog(@"included tip: $%.2f", calculateTip);
//    [self.calculateTip calculateTip];
    
    // get calcurated tip(NSString) -> double using stringWithFormat:@""
    self.tipAmountLabel.text = [NSString stringWithFormat:@"included tip: $%.2f", calculateTip];
    
    
}



@end
