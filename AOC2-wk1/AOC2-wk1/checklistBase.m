//
//  checklistBase.m
//  AOC2-wk1
//
//  Created by john plank on 3/6/13.
//  Copyright (c) 2013 john plank. All rights reserved.
//

#import "checklistBase.h"

@implementation checklistBase

@synthesize kids, femaleName, numberOfBoyfriends, numberOfCats, dateTimeMin;

-(id)init
{
    self = [ super init];
    if (self != nil)
    {
        [self setDateTimeMin:0];
        [self setKids:@""];
        [self setNumberOfCats:0];
        [self setNumberOfBoyfriends:0];
    }
    return self;
}




-(void)calculateSecondDate
{
    [self setDateTimeMin:60];
    [self setDateTimeMin: numberOfBoyfriends + numberOfCats - dateTimeMin];
    NSLog(@"dateTimeMin %i", dateTimeMin);
    
}



@end
