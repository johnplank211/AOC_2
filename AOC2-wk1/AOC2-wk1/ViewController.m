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
            BeckyButton.enabled = false;
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

///Added stepper to add points to the date
-(IBAction)stepPoints:(id)sender;

{
    //stepper variable
    int points = stepControl.value;    
    
    //display point bonuses
    if (BeckyButton.enabled == false)
    {
        textField.text = [NSString stringWithFormat:@"Date points added %d", points];
    }
    
    if (JulieButton.enabled == false)
    {
        textField.text = [NSString stringWithFormat:@"Date points added %d", points];
    }
    
    if (JessicaButton.enabled == false)
    {
        textField.text = [NSString stringWithFormat:@"Date points added %d", points];
    }
}

//creats and calculates date time from who ever was selected
//Plus added stepper that when plus or minus is hit then hit the calculate button again for new results 
-(IBAction)calculate:(id)sender;
{
    int calculateDate = stepControl.value;
    
    if (BeckyButton.enabled == false)
    {
    Becky *firstDate = (Becky*)[dateFactory createDate:BECKY];
        
        if (firstDate != nil)
            [firstDate calculateSecondDate];
            int timeLeft = firstDate.dateTimeMin + firstDate.numberOfCats + calculateDate;
        
        {
                textField.text = [NSString stringWithFormat:@"Time added %d:, Time left:%i, Name:%@",
                              calculateDate, timeLeft, firstDate.femaleName];
                stepControl.value = 0;
        
        }
        if (timeLeft < 0)
        {
            warning_Label.text = [NSString stringWithFormat:@"Crazy Alert!!!                 %@",
                                  firstDate.excuse]; 
        }
        if (timeLeft > 0)
        {
            warning_Label.text = [NSString string];
        }
    }
    else if (JulieButton.enabled == false)
    {
        Julie *secondDate = (Julie*)[dateFactory createDate:JULIE];
        
        if (secondDate != nil)
            [secondDate calculateSecondDate];
        int timeLeft = secondDate.dateTimeMin - secondDate.numberOfBoyfriends + calculateDate;
        
        {
            textField.text = [NSString stringWithFormat:@"Time added %d:, Time left:%i,Name:%@",
                              calculateDate, timeLeft, secondDate.femaleName];
            stepControl.value = 0;
            
        }
        if (timeLeft < 0)
        {
            warning_Label.text = [NSString stringWithFormat:@"Crazy Alert!!!                 %@",
                                  secondDate.excuse];
        }
        if (timeLeft > 0)
        {
            warning_Label.text = [NSString string];
        }
 
    }
    else if (JessicaButton.enabled == false)
    {
        Jessica *thirdDate = (Jessica*)[dateFactory createDate:JESSICA];
        
        if (thirdDate != nil)
            [thirdDate calculateSecondDate];
        int timeLeft = thirdDate.dateTimeMin - thirdDate.numTalksAboutEx + calculateDate;
        
        {
            textField.text = [NSString stringWithFormat:@"Time added %d:, Time left:%i,Name:%@",
                              calculateDate, timeLeft, thirdDate.femaleName];
            stepControl.value = 0;
            
        }
        if (timeLeft < 0)
        {
            warning_Label.text = [NSString stringWithFormat:@"Crazy Alert!!!  %@",
                                  thirdDate.excuse];
        }
        if (timeLeft > 0)
        {
            warning_Label.text = [NSString string];
        }
        
    }

}


// opens SecondView with Dev Info and a cute pic
-(IBAction)info:(id)sender;
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
-(IBAction)segmentChange:(id)sender;
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
