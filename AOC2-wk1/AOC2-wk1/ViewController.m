//
//  ViewController.m
//  AOC2-wk1
//
//  Created by john plank on 3/6/13.
//  Copyright (c) 2013 john plank. All rights reserved.
//

#import "ViewController.h"
#import "dateFactory.h"

@interface ViewController ()

@end

@implementation ViewController


//-----project-1------// how long should the date last and will there be another???


- (void)viewDidLoad
{
    //title_Label.text = @"Suck it tribeck";
    //textField.text = @"Put here big boy";
    
    
    self.view.backgroundColor = [UIColor grayColor];
//
/////not sure if it needed a title but seems like it should
//    
//    title_Label = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 30.0f)];
//    if (title_Label != nil)
//    {
//        title_Label.text = @"Date Rater"; //I crack me up
//        title_Label.textColor = [UIColor whiteColor];
//        title_Label.textAlignment = NSTextAlignmentCenter;
//        title_Label.backgroundColor = [UIColor blackColor];
//        
//        [self.view addSubview:title_Label];
//    }
//    
//    
//    
///////////// SubClass Becky 
//   Becky *firstDate = (Becky*)[dateFactory createDate:BECKY];
//    
//    startDateLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 50.0f, 320.0f, 40.0f)];
//    if (startDateLabel != nil)
//    {
//        startDateLabel.text = [NSString stringWithFormat:@"Well heres my first date with %@ lets so how she does.", firstDate.femaleName];
//        startDateLabel.numberOfLines = 3;
//        startDateLabel.textColor = [UIColor whiteColor];
//        startDateLabel.textAlignment = NSTextAlignmentCenter;
//        startDateLabel.backgroundColor = [UIColor blackColor];
//        
//        [self.view addSubview:startDateLabel];
//    }
//        
//    {
//        [firstDate calculateSecondDate];
//        [firstDate setNumberOfBoyfriends:3];
//        
//        firstDateLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 100.0f, 320.0f, 50.0f)];
//        if (firstDateLabel != nil)
//        {
//            //
//            // NSString - Information about Becky 
//            firstDateLabel.text = [NSString stringWithFormat:@"Clock:%i, Name:%@, Kids:%i, Piercings:%i, Cats:%i, Excuse:%@, Boyfriends:%i ", firstDate.dateTimeMin, firstDate.femaleName, firstDate.kids, firstDate.piercings, firstDate.numberOfCats, firstDate.excuse, firstDate.numberOfBoyfriends];
//            //
//            // Label setup
//            firstDateLabel.numberOfLines = 3;
//            firstDateLabel.textColor = [UIColor whiteColor];
//            firstDateLabel.textAlignment = NSTextAlignmentCenter;
//            firstDateLabel.backgroundColor = [UIColor blackColor];
//        }
//        else
//        {
//            //
//            // Error message
//            firstDateLabel.text = [NSString stringWithFormat:@"She's not talking."];
//            firstDateLabel.textColor = [UIColor redColor];
//            firstDateLabel.textAlignment = NSTextAlignmentCenter;
//            firstDateLabel.backgroundColor = [UIColor blackColor];
//        }
//            [self.view addSubview:firstDateLabel];
//    }
//    
/////////////SubClass Julie
//    Julie *secondDate = (Julie*)[dateFactory createDate:JULIE];
//    
//    startDate2Label = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 170.0f, 320.0f, 40.0f)];
//    if (startDate2Label != nil)
//    {
//        startDate2Label.text = [NSString stringWithFormat:@"Well heres my first date with %@ lets so how she does.", secondDate.femaleName];
//        startDate2Label.numberOfLines = 3;
//        startDate2Label.textColor = [UIColor whiteColor];
//        startDate2Label.textAlignment = NSTextAlignmentCenter;
//        startDate2Label.backgroundColor = [UIColor blackColor];
//        
//        [self.view addSubview:startDate2Label];
//    }
//    
//   
//    
//    {
//        [secondDate calculateSecondDate];
//        [secondDate setNumberOfCats:4]; //Change number of cats she thinks she will come across less crazy :-)
//        
//        secondDateLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 220.0f, 320.0f, 80.0f)];
//        if (secondDateLabel != nil)
//        {
//            //
//            // NSString - Information about Julie
//            secondDateLabel.text = [NSString stringWithFormat:@"Clock:%i, Name:%@, Kids:%i, Checks the mirror:%i, Cats:%i, Says hot:%i, Boyfriends:%i Excuse:%@ ", secondDate.dateTimeMin, secondDate.femaleName, secondDate.kids, secondDate.numCheckMirror, secondDate.numberOfCats, secondDate.numSaysHot, secondDate.numberOfBoyfriends, secondDate.excuse];
//            //
//            // Label setup
//            secondDateLabel.numberOfLines = 4;
//            secondDateLabel.textColor = [UIColor whiteColor];
//            secondDateLabel.textAlignment = NSTextAlignmentCenter;
//            secondDateLabel.backgroundColor = [UIColor blackColor];
//        }
//        else
//        {
//            //
//            // Error message
//            secondDateLabel.text = [NSString stringWithFormat:@"She's not talking."];
//            secondDateLabel.textColor = [UIColor redColor];
//            secondDateLabel.textAlignment = NSTextAlignmentCenter;
//            secondDateLabel.backgroundColor = [UIColor blackColor];
//        }
//        [self.view addSubview:secondDateLabel];
//    }
//
//    
/////////////SubClass Jessica     
//    Jessica *thirdDate = (Jessica*)[dateFactory createDate:JESSICA];
//    
//    startDate3Label = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 310.0f, 320.0f, 40.0f)];
//    if (startDate3Label != nil)
//    {
//        startDate3Label.text = [NSString stringWithFormat:@"Well heres my first date with %@ lets so how she does.", thirdDate.femaleName];
//        startDate3Label.numberOfLines = 3;
//        startDate3Label.textColor = [UIColor whiteColor];
//        startDate3Label.textAlignment = NSTextAlignmentCenter;
//        startDate3Label.backgroundColor = [UIColor blackColor];
//        
//        [self.view addSubview:startDate3Label];
//    }
//    
//
//    
//    {
//        [thirdDate calculateSecondDate];
//        [thirdDate setNumberOfCats:1]; // Changes NumOfCats. she doesn't want to sound like she doesn't like cats so she says she has one.
//        
//        thirdDateLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 370.0f, 320.0f, 80.0f)];
//        if (secondDateLabel != nil)
//        {
//            //
//            // NSString - Information about Jessica
//            thirdDateLabel.text = [NSString stringWithFormat:@"Clock:%i, Name:%@, Kids:%i, Checks the mirror:%i, Cats:%i, Says thanks:%i, Boyfriends:%i Excuse:%@ ", thirdDate.dateTimeMin, thirdDate.femaleName, thirdDate.kids, thirdDate.numTalksAboutEx, thirdDate.numberOfCats, thirdDate.numSaysThankYou, thirdDate.numberOfBoyfriends, thirdDate.excuse];
//            //
//            // Label setup
//            thirdDateLabel.numberOfLines = 4;
//            thirdDateLabel.textColor = [UIColor whiteColor];
//            thirdDateLabel.textAlignment = NSTextAlignmentCenter;
//            thirdDateLabel.backgroundColor = [UIColor blackColor];
//        }
//        else
//        {
//            //
//            // Error message
//            thirdDateLabel.text = [NSString stringWithFormat:@"She's not talking."];
//            thirdDateLabel.textColor = [UIColor redColor];
//            thirdDateLabel.textAlignment = NSTextAlignmentCenter;
//            thirdDateLabel.backgroundColor = [UIColor blackColor];
//        }
//        [self.view addSubview:thirdDateLabel];
//    }
//
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


//- (void)viewWillAppear:(BOOL)animated
//{
//    title_Label.text = @"Date Rate";
//    [super viewWillAppear:animated];
//}

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
            //dateTimeButton.enabled =;
            textField.text = @"Becky:";
        }
        else if (button.tag == 1)
        {
            BeckyButton.enabled = true;
            JulieButton.enabled = false;
            JessicaButton.enabled = true;
            //dateTimeButton.enabled = true;
            textField.text = @"Julie:";
        }
        else if (button.tag = 2)
        {

            BeckyButton.enabled = true;
            JulieButton.enabled = true;
            JessicaButton.enabled = false;
            //dateTimeButton.enabled = false;
            textField.text = @"Jessica:";
        }
    }
}


-(IBAction)calculate:(id)sender
{
    //int _calculate = stepControl.value;
    //textField.text = @"eatmwkjdei";
    
    if (BeckyButton.enabled == false)
    {
    Becky *firstDate = (Becky*)[dateFactory createDate:BECKY];
        if (firstDateLabel != nil)
        {
            textField.text = [NSString stringWithFormat:@"Clock:%i, Name:%@, Boyfriends:%i ", firstDate.dateTimeMin, firstDate.femaleName,
                              firstDate.numberOfBoyfriends];
        }
    }
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)segmentChange:(id)sender
{
    UISegmentedControl *BGChange = (UISegmentedControl*)sender;
    if (BGChange != nil)
    {
        int _pressed = BGChange.selectedSegmentIndex;
        
        if (_pressed == 0)
        {
            
            
            self.view.backgroundColor = [UIColor grayColor]; // Default
            NSLog(@"Default Pressed");
        }
        else if (_pressed == 1)
        {
            
            self.view.backgroundColor = [UIColor greenColor]; // Brown
            NSLog(@"Green Pressed");
        }
        else if (_pressed == 2)
        {
            
            self.view.backgroundColor = [UIColor blueColor]; // Blue
            NSLog(@"Blue Pressed");
        }
    }
}





@end
