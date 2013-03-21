//
//  ViewController.h
//  Events Horizon
//
//  Created by john plank on 3/20/13.
//  Copyright (c) 2013 john plank. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"

@interface ViewController : UIViewController <SecondViewDelegate>
{
    IBOutlet UITextView *eventField; // TextView
    IBOutlet UIButton *addEvent;
    id<SecondViewDelegate> delegate;
}


@property(strong) id<SecondViewDelegate> delegate;
-(IBAction)addEvent:(id)sender;
//-(void)eventSaved:(NSString*)_eventSaved dateSaved:(NSDate *)_dateSaved;

@end
