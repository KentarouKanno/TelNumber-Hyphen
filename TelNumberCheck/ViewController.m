//
//  ViewController.m
//  TelNumberCheck
//
//  Created by KentarOu on 2014/05/11.
//  Copyright (c) 2014年 KentarOu. All rights reserved.
//

#import "ViewController.h"
#import "TelNumber_Hyphen.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *numberTextField;
@property (weak, nonatomic) IBOutlet UILabel *displayNumberLabel;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [_numberTextField becomeFirstResponder];
}



- (IBAction)changeNumber:(id)sender
{
    TelNumber_Hyphen *number = [TelNumber_Hyphen new];
    _displayNumberLabel.text = [number telNumber_Hyphen:_numberTextField.text];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


@end
