//
//  settingsViewController.m
//  tipcalculator
//
//  Created by Anupam Pathak on 2/17/14.
//  Copyright (c) 2014 Anupam Pathak. All rights reserved.
//

#import "settingsViewController.h"

@interface settingsViewController ()

@property (weak, nonatomic) IBOutlet UISegmentedControl *tipAmountSelector;
- (IBAction)tipValueChanged:(id)sender;


@end

@implementation settingsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    int tipInt = [defaults integerForKey:@"defaultTip"];
    self.tipAmountSelector.selectedSegmentIndex = tipInt;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tipValueChanged:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setInteger:self.tipAmountSelector.selectedSegmentIndex forKey:@"defaultTip"];
    [defaults synchronize];
    
}


@end
