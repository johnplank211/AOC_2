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
    IBOutlet UILabel *addevent2;//event swipe
    UISwipeGestureRecognizer *rightSwiper;
}


@property(strong) id<SecondViewDelegate> delegate;

-(IBAction)saveEvent:(id)sender;

@end
