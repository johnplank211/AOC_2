//
//  SecondViewController.h
//  Events Horizon
//
//  Created by john plank on 3/20/13.
//  Copyright (c) 2013 john plank. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SecondViewDelegate <NSObject>

@required
-(void)eventSaved:(NSString*)_eventSaved dateSaved:(NSDate *)_dateSaved;

@end

@interface SecondViewController : UIViewController <UITextFieldDelegate, UIPickerViewDelegate>

{
    // Outlets
    IBOutlet UITextField *eventText; // TextField
    IBOutlet UIDatePicker *_date; // Date picker
    NSString *_eventSaved; //event string
    IBOutlet UILabel *saveEvent;
    NSDate *_dateSaved; //date
    UISwipeGestureRecognizer *leftSwiper;
    id<SecondViewDelegate> delegate; // Creates SecondViewDelegate
    
}

-(IBAction)closeKeyboard:(id)sender; //close
-(IBAction)_picker:(id)sender;  //picker


// Allows you to set the delegate from outside
@property (strong) id<SecondViewDelegate> delegate;

@end
