//
//  ViewController.h
//  AOC2-wk1
//
//  Created by john plank on 3/6/13.
//  Copyright (c) 2013 john plank. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UILabel *title_Label;
    IBOutlet UILabel *firstDateLabel;
    IBOutlet UILabel *secondDateLabel;
    //UILabel *startDateLabel;
    //UILabel *startDate2Label;
    IBOutlet UILabel *thirdDateLabel;
    //UILabel *startDate3Label;
    IBOutlet UITextField *textField;
    IBOutlet UIButton *BeckyButton;
    IBOutlet UIButton *JulieButton;
    IBOutlet UIButton *JessicaButton;
    IBOutlet UILabel *dateTimeButton;
    IBOutlet UIStepper *stepControl;
    
}

-(IBAction)onClick:(id)sender;
-(IBAction)calculate:(id)sender;
-(IBAction)stepChange:(id)sender;
-(IBAction)segmentChange:(id)sender;

@end
