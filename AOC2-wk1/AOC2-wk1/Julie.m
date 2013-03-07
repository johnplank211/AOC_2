//
//  Julie.m
//  AOC2-wk1
//
//  Created by john plank on 3/6/13.
//  Copyright (c) 2013 john plank. All rights reserved.
//

#import "Julie.h"

@implementation Julie

@synthesize numCheckMirror, selfAbsorbed;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setDateTimeMin:60];
        [self setFemaleName:@"Julie"];
        [self setNumberOfCats:7];
        [self setNumberOfBoyfriends:1];
        [self setKids:@"No"];
        [self setNumCheckMirror:9];
        [self setSelfAbsorbed:@"Very"];
        [self setExcuse:@""];
        
    }
    return self;
}

-(void)calculateSecondDate
{
    //[self setSecondDateProspect: (selfAbsorbedScale + NumberOfBoyfriends)];
    
    if ((selfAbsorbed == @"Very") && (numCheckMirror > 5))
    {
        [self setExcuse:@"Tummy hurts"];
        [self setDateTimeMin:20];
    }
    else
    {
        [self setExcuse:@"None yet"];
    }
}




@end
