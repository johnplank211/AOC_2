//
//  Jessica.m
//  AOC2-wk1
//
//  Created by john plank on 3/6/13.
//  Copyright (c) 2013 john plank. All rights reserved.
//

#import "Jessica.h"

@implementation Jessica

@synthesize numTalksAboutEx, numSaysThankYou;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setDateTimeMin:60];
        [self setFemaleName:@"Jessica"];
        [self setNumberOfCats:0];
        [self setNumberOfBoyfriends:1];
        [self setKids:0];
        [self setNumSaysThankYou:10];
        [self setNumTalksAboutEx:0];
        [self setExcuse:@""];
        
    }
    return self;
}

-(void)calculateSecondDate
{
    if ((numTalksAboutEx < 1) && (numSaysThankYou > 4))
    {
        [self setExcuse:@"None"];
        [self setDateTimeMin:120];
    }
    
}


@end
