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
        [self setNumTalksAboutEx:2];
        [self setExcuse:@"Oh no left the iron on"];
        
    }
    return self;
}

-(void)calculateSecondDate
{
   [self setDateTimeMin:(numSaysThankYou * numTalksAboutEx)];
}


@end
