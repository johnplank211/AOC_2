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
        [self setDateTimeMin:60];
        [self setFemaleName:@"Becky"];
        [self setNumberOfCats:22];
        [self setNumberOfBoyfriends:12];
        [self setKids:3];
        [self setPiercings:4];
        [self setNumCheckPhone:16];
        [self setExcuse:@""];
        
    }
    return self;
}

-(void)calculateSecondDate
{
   if ((piercings > 2) && (numCheckPhone > 3))
   {
       [self setExcuse:@"Mom is sick"];
       [self setDateTimeMin:10];
   }
    else
    {
        [self setExcuse:@"None yet"];
    }
}

@end
