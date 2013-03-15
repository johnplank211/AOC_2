//
//  Becky.m
//  AOC2-wk1
//
//  Created by john plank on 3/6/13.
//  Copyright (c) 2013 john plank. All rights reserved.
//

#import "Becky.h"

@implementation Becky

@synthesize piercings, numCheckPhone;


-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setDateTimeMin:30];
        [self setFemaleName:@"Becky"];
        [self setNumberOfCats:5];
        [self setNumberOfBoyfriends:12];
        [self setKids:3];
        [self setPiercings:4];
        [self setNumCheckPhone:10];
        [self setExcuse:@"moms very sick"];
        
    }
    return self;
}

-(void)calculateSecondDate
{
    [self setDateTimeMin:(numCheckPhone - piercings)];
}

@end
