//
//  ViewController.m
//  AOC2-wk1
//
//  Created by john plank on 3/6/13.
//  Copyright (c) 2013 john plank. All rights reserved.
//

#import "ViewController.h"
#import "ChecklistBase.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController


//-----project-1------// how long should the date last and will there be another???


- (void)viewDidLoad
{
     
    self.view.backgroundColor = [UIColor grayColor];
 
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}



//selects the date and makes it so you can't select twice
-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if (button != nil)
    {
        if (button.tag == 0)
        {
            BeckyButton.enabled = NO;
            JulieButton.enabled = true;
            JessicaButton.enabled = true;
            textField.text = @"Becky:";
        }
        else if (button.tag == 1)
        {
            BeckyButton.enabled = true;
            JulieButton.enabled = false;
            JessicaButton.enabled = true;
            textField.text = @"Julie:";
        }
        else if (button.tag = 2)
        {

            BeckyButton.enabled = true;
            JulieButton.enabled = true;
            JessicaButton.enabled = false;
            textField.text = @"Jessica:";
        }
    }
}

//creats and calculates date time from who ever was selected
//Plus stepper that when plus or minus is hit then hit the calculate button again for new results 
-(IBAction)calculate:(id)sender
{
    int calculateDate = stepControl.value;
    
    if (BeckyButton.enabled == FALSE)
    {
    Becky *firstDate = (Becky*)[dateFactory createDate:BECKY];
        
        if (firstDate != nil)
            [firstDate calculateSecondDate];
            int timeLeft = firstDate.dateTimeMin - firstDate.numberOfCats + calculateDate;
        
        {
                textField.text = [NSString stringWithFormat:@"Time left:%i,Name:%@",
                              timeLeft, firstDate.femaleName];
                stepControl.value = 30;
        
        }
        if (timeLeft < 0)
        {
            warning_Label.text = [NSString stringWithFormat:@"Crazy Alert!!!                 %@",
                                  firstDate.excuse]; 
        }
    }
    else if (JulieButton.enabled == FALSE)
    {
        Julie *secondDate = (Julie*)[dateFactory createDate:JULIE];
        
        if (secondDate != nil)
            [secondDate calculateSecondDate];
        int timeLeft = secondDate.dateTimeMin - secondDate.numberOfBoyfriends + calculateDate;
        
        {
            textField.text = [NSString stringWithFormat:@"Time left:%i,Name:%@",
                              timeLeft, secondDate.femaleName];
            stepControl.value = 30;
            
        }
        if (timeLeft < 0)
        {
            warning_Label.text = [NSString stringWithFormat:@"Crazy Alert!!!                 %@",
                                  secondDate.excuse];
        }
 
    }
    else if (JessicaButton.enabled == FALSE)
    {
        Jessica *thirdDate = (Jessica*)[dateFactory createDate:JESSICA];
        
        if (thirdDate != nil)
            [thirdDate calculateSecondDate];
        int timeLeft = thirdDate.dateTimeMin - thirdDate.numTalksAboutEx + calculateDate;
        
        {
            textField.text = [NSString stringWithFormat:@"Time left:%i,Name:%@",
                              timeLeft, thirdDate.femaleName];
            stepControl.value = 30;
            
        }
        if (timeLeft < 0)
        {
            warning_Label.text = [NSString stringWithFormat:@"Crazy Alert!!!  %@",
                                  thirdDate.excuse];
        }
        
    }

}


// opens SecondView with Dev Info and a cute pic
-(IBAction)info:(id)sender
{
    SecondViewController *viewControl = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    if (viewControl != nil)
    {
        [UIImage imageNamed:@"JohnImage.jpg"];
                [self presentViewController:viewControl animated:YES completion:nil];
    }
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



//changes the color of the background
-(IBAction)segmentChange:(id)sender
{
    UISegmentedControl *BGChange = (UISegmentedControl*)sender;
    if (BGChange != nil)
    {
        int pressed = BGChange.selectedSegmentIndex;
        
        if (pressed == 0)
        {
            self.view.backgroundColor = [UIColor grayColor]; // default gray
        }
        else if (pressed == 1)
        {
            self.view.backgroundColor = [UIColor greenColor]; // green
        }
        else if (pressed == 2)
        {
            self.view.backgroundColor = [UIColor blueColor]; // blue
        }
    }
}






@end
