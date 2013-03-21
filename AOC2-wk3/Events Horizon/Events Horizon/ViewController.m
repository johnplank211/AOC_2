//
//  ViewController.m
//  Events Horizon
//
//  Created by john plank on 3/20/13.
//  Copyright (c) 2013 john plank. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize delegate;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





-(IBAction)addEvent:(id)sender;
{
    SecondViewController *viewControl = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    if (viewControl != nil)        
    {
        viewControl.delegate = self;
        [self presentViewController:viewControl animated:YES completion:nil];
    }
}


-(void)eventSaved:(NSString*)_eventSaved dateSaved:(NSDate *)_dateSaved
{
    // \n adds spaces between events
    NSString *eventText = [NSString stringWithFormat:@"\n\n%@\n%@", _eventSaved, _dateSaved];
    
    if ([eventField.text isEqualToString:@""])
    {
        eventField.text = [NSString stringWithFormat:@"%@\n%@", _eventSaved, _dateSaved];
    }
    else
    {
        eventField.text = [eventField.text stringByAppendingString:eventText];
    }
}


@end
