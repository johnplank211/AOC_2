//
//  Becky.m
//  AOC2-wk1
//
//  Created by john plank on 3/6/13.
//  Copyright (c) 2013 john plank. All rights reserved.
//

#import "Becky.h"

@implementation Becky

@synthesize personalityScale, selfAbsorbedScale;


-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setSecondDateProspect:4];
        [self setNumberOfCats:2];
        [self setNumberOfBoyfriends:5];
        [self setKids:@"Yes I would love to have a lot"];
        [self setPersonalityScale:6];
        [self setSelfAbsorbedScale:3];
        
    }
    return self;
}

-(void)calculateSecondDate
{
    [self setSecondDateProspect: (NumberOfCats + personalityScale + selfAbsorbedScale + NumberOfBoyfriends)];
}

@end
