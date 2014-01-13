//
//  SettingsViewController.m
//  TipCalculator
//
//  Created by Anusha Chagarlamudi on 1/12/14.
//  Copyright (c) 2014 Anusha Chagarlamudi. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipPercentControl;
- (IBAction)onClickingSave:(id)sender;


@end

@implementation SettingsViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onClickingSave:(id)sender
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    int selectedTip = self.tipPercentControl.selectedSegmentIndex;
    [defaults setInteger:selectedTip forKey:@"user_choice_tip"];
    [defaults synchronize]; 
}

- (void)viewWillAppear:(BOOL)animated {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    int tipValue = [defaults integerForKey:@"user_choice_tip"];
    [self.tipPercentControl setSelectedSegmentIndex:tipValue];
}

@end
