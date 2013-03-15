//
//  ViewController.h
//  AOC2-wk1
//
//  Created by john plank on 3/6/13.
//  Copyright (c) 2013 john plank. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "dateFactory.h"

@interface ViewController : UIViewController
{
    IBOutlet UIImageView *JohnImage;
    IBOutlet UILabel *title_Label;
    IBOutlet UITextField *textField;
    IBOutlet UIButton *BeckyButton;
    IBOutlet UIButton *JulieButton;
    IBOutlet UIButton *JessicaButton;
    IBOutlet UILabel *warning_Label;
    IBOutlet UIStepper *stepControl;
    
}

-(IBAction)onClick:(id)sender;
-(IBAction)calculate:(id)sender;
-(IBAction)segmentChange:(id)sender;
-(IBAction)info:(id)sender;

@end
