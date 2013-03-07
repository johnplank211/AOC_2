//
//  ViewController.m
//  AOC2-wk1
//
//  Created by john plank on 3/6/13.
//  Copyright (c) 2013 john plank. All rights reserved.
//

#import "ViewController.h"
#import "dateFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor darkGrayColor];
    
    title_Label = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 40.0f)];
    if (title_Label != nil)
    {
        title_Label.text = @"Stay or go?";
        title_Label.textColor = [UIColor whiteColor];
        title_Label.textAlignment = NSTextAlignmentCenter;
        title_Label.backgroundColor = [UIColor blackColor];
        
        [self.view addSubview:title_Label];
    }
    
    Becky *firstDate = (Becky*)[dateFactory createDate:BECKY];
    if (firstDate != nil)
    {
        [firstDate calculateSecondDate];
        //[firstDate setNumberOfBoyfriends:3];
        
        firstDateLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 50.0f, 320.0f, 60.0f)];
        if (firstDateLabel != nil)
        {
            //
            // NSString - Information about Becky 
            firstDateLabel.text = [NSString stringWithFormat:@"Name:%@, Kids:%@, Personality:%@, Cats:%i, Self Absorbed:%@, Boyfriends:%i ", firstDate.femaleName, firstDate.kids, firstDate.personality, firstDate.numberOfCats, firstDate.selfAbsorbed, firstDate.numberOfBoyfriends];
            //
            // Label setup
            firstDateLabel.numberOfLines = 3;
            firstDateLabel.textColor = [UIColor whiteColor];
            firstDateLabel.textAlignment = NSTextAlignmentCenter;
            firstDateLabel.backgroundColor = [UIColor blackColor];
        }
        else
        {
            //
            // Error message
            firstDateLabel.text = [NSString stringWithFormat:@"She's not talking."];
            firstDateLabel.textColor = [UIColor redColor];
            firstDateLabel.textAlignment = NSTextAlignmentCenter;
            firstDateLabel.backgroundColor = [UIColor blackColor];
        }
            [self.view addSubview:firstDateLabel];
    }
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
