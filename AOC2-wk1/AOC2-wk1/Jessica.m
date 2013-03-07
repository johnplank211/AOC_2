//
//  Jessica.m
//  AOC2-wk1
//
//  Created by john plank on 3/6/13.
//  Copyright (c) 2013 john plank. All rights reserved.
//

#import "Jessica.h"

@implementation Jessica

@synthesize numTalksAboutEx, allAboutHer;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setDateTimeMin:60];
        [self setFemaleName:@"Jessica"];
        [self setNumberOfCats:0];
        [self setNumberOfBoyfriends:1];
        [self setKids:@"No"];
        [self setAllAboutHer:@"No"];
        [self setNumTalksAboutEx:0];
        [self setExcuse:@""];
        
    }
    return self;
}

-(void)calculateSecondDate
{
    if ((numTalksAboutEx < 1) && (allAboutHer == @"No"))
    {
        [self setExcuse:@"None"];
        [self setDateTimeMin:120];
    }
    
}


@end
