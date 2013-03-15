//
//  SecondViewController.m
//  AOC2-wk1
//
//  Created by john plank on 3/14/13.
//  Copyright (c) 2013 john plank. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

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
    // Background color
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated
{
    // displays creator
    devInfo.text = @"John J Plank";
    
    [super viewWillAppear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//
// Back Button
-(IBAction)infoClose:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
