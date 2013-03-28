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


//show users saved data
- (void)viewDidLoad
{
    NSUserDefaults *_userEventSaves = [NSUserDefaults standardUserDefaults];
    if (_userEventSaves != nil)
    {
        NSString *_eventSaved = [_userEventSaves objectForKey:@"eventData"];
        
        eventField.text = _eventSaved;
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated
{
    rightSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    rightSwiper.direction = UISwipeGestureRecognizerDirectionRight;
    [addevent2 addGestureRecognizer:rightSwiper];
    [super viewDidAppear:animated];
}

//add event swipe toake to the second view
- (void)onSwipe:(UISwipeGestureRecognizer*)recognizer
{
    if (recognizer.direction == UISwipeGestureRecognizerDirectionRight)
    {
        SecondViewController *viewControl = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
            if (viewControl != nil)
           
                viewControl.delegate = self;
                [self presentViewController:viewControl animated:YES completion:nil];

    }
}


//shows saved data from the second view
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


//save button action. 
-(IBAction)saveEvent:(id)sender
{
    NSUserDefaults *_eventSaved = [NSUserDefaults standardUserDefaults];
    if (_eventSaved != nil)
    {
        NSString *saveEvent = eventField.text;
        
        [_eventSaved setObject:saveEvent forKey:@"eventData"];
        
        // Saves the data
        [_eventSaved synchronize];
    }
}



@end
