//
//  checklistBase.m
//  AOC2-wk1
//
//  Created by john plank on 3/6/13.
//  Copyright (c) 2013 john plank. All rights reserved.
//

#import "checklistBase.h"

@implementation checklistBase

@synthesize kids, numberOfBoyfriends, numberOfCats, dateTimeMin, excuse;

-(id)init
{
    self = [ super init];
    if (self != nil)
    {
        [self setFemaleName:@""];
        [self setDateTimeMin:60];
        [self setKids:0];
        [self setNumberOfCats:0];
        [self setNumberOfBoyfriends:0];
        [self setExcuse:@""];
    }
    return self;
}




-(void)calculateSecondDate
{
    [self setDateTimeMin:60];
    
}



@end
