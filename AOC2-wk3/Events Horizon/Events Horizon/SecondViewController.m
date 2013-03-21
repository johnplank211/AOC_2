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

// Keyboard (show and hide)
- (void)viewWillAppear:(BOOL)animated
{
    // Show
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    // Hide
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    
    [super viewWillAppear:animated];
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
    NSLog(@"Close Keyboard Pressed");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Save (Button and Save text in text field)
-(IBAction)_save:(id)sender
{
    // Save settings here
    UIBarButtonItem *save = (UIBarButtonItem*)sender;
    if (save != nil)
    {
        // Checks button sender tag
        if (save.tag == 0)
        {
            // Populates text field
            _eventSaved = eventText.text;
            _dateSaved = _date.date;
            
        }
        // Runs if there is no text in the field
        if ([eventText.text length] == 0)
        {
            // Alert pops up if no information in text field has been entered.
            UIAlertView *_eventAlert = [[UIAlertView alloc] initWithTitle:@"OH NO!" message:@"You need to create an event for it to save, silly." delegate:nil cancelButtonTitle:@"Continue" otherButtonTitles:nil];
            if (_eventAlert != nil)
            {
                [_eventAlert show];
            }
        }
        // Runs if there has been text entered into the field.
        else if ([eventText.text length] >= 1)
        {
            NSLog(@"Save was pressed");
            NSLog(@"%@", _eventSaved);
        }
        
        // Grabs _eventSaved and _dateSaved
        [delegate eventSaved:_eventSaved dateSaved:_dateSaved];
        
        [self dismissViewControllerAnimated:TRUE completion:nil];
    }
}



// became first responder (delegate for textfield)
- (void)textFieldDidBeginEditing:(UITextField *)textField // Did Begin Editing
{
    textField.text = [NSString stringWithFormat:@""]; // clear out text when pressed
    NSLog(@"textField touched");
}


// Date Picker
-(IBAction)_picker:(id)sender
{
    UIDatePicker *picker = (UIDatePicker*)sender;
    if (picker != nil)
    {
        _dateSaved = picker.date;
        
        NSLog(@"date=%@", [_dateSaved description]); //displays the date in Output
    }
}

@end