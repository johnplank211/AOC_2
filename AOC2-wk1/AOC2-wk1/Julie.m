//
//  Julie.m
//  AOC2-wk1
//
//  Created by john plank on 3/6/13.
//  Copyright (c) 2013 john plank. All rights reserved.
//

#import "Julie.h"

@implementation Julie

@synthesize numCheckMirror, numCheckPhone;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setNumberOfCats:0];
        [self setNumberOfBoyfriends:1];
        [self setKids:@"No"];
        [self setNumCheckMirror:9];
        [self setNumCheckPhone:16];
        
    }
    return self;
}

-(void)calculateSecondDate
{
    //[self setSecondDateProspect: (selfAbsorbedScale + NumberOfBoyfriends)];
}


@end
