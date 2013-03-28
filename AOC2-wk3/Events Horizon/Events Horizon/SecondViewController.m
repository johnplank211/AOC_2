//
//  SecondViewController.m
//  Events Horizon
//
//  Created by john plank on 3/20/13.
//  Copyright (c) 2013 john plank. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

@synthesize delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        delegate = nil;
        // Custom initialization
    }
    return self;
}
- (void)viewDidLoad
{
    // picker sets minimum date of the current date.
    NSDate *_minimum = [NSDate date];
    _date.minimumDate = _minimum;
    _dateSaved = [NSDate date];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

// Keyboard up and down
- (void)viewWillAppear:(BOOL)animated
{
    // Show
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    // Hide
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    
    [super viewWillAppear:animated];
    
    leftSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
        leftSwiper.direction = UISwipeGestureRecognizerDirectionLeft;
        [saveEvent addGestureRecognizer:leftSwiper];
}

// Show
- (void)keyboardWillShow:(NSNotification *)notification
{
    
}

// Hide
- (void)keyboardWillHide:(NSNotification *)notification
{
    
}

// Close
-(IBAction)closeKeyboard:(id)sender
{
    [eventText resignFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//Saves information to the first view
- (void)onSwipe:(UISwipeGestureRecognizer*)sender
{
    // Populates text field
    _eventSaved = eventText.text;
    _dateSaved = _date.date;
    
    // Runs if there is no text in the field
    if ([eventText.text length] == 0)
    {
        // Alert pops up if nothing was entered
        UIAlertView *_eventAlert = [[UIAlertView alloc] initWithTitle:@"Forgetting something!" message:@"You need to create an event for it to save." delegate:nil cancelButtonTitle:@"Continue" otherButtonTitles:nil];
        if (_eventAlert != nil)
        {
            [_eventAlert show];
        }
    }
    // Grabs _eventSaved and _dateSaved
    [delegate eventSaved:_eventSaved dateSaved:_dateSaved];
    
    [self dismissViewControllerAnimated:TRUE completion:nil];
}


// became first responder delegate for textfield
- (void)textFieldDidBeginEditing:(UITextField *)textField //  Editing
{
    textField.text = [NSString stringWithFormat:@""]; // clear out text when pressed
}


// Date Picker
-(IBAction)_picker:(id)sender
{
    UIDatePicker *picker = (UIDatePicker*)sender;
    if (picker != nil)
    {
        _dateSaved = picker.date;
        
    }
}

@end