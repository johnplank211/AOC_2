//
//  Julie.m
//  AOC2-wk1
//
//  Created by john plank on 3/6/13.
//  Copyright (c) 2013 john plank. All rights reserved.
//

#import "Julie.h"

@implementation Julie

@synthesize numCheckMirror, numSaysHot;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setDateTimeMin:60];
        [self setFemaleName:@"Julie"];
        [self setNumberOfCats:7];
        [self setNumberOfBoyfriends:7];
        [self setKids:5];
        [self setNumCheckMirror:9];
        [self setNumSaysHot:89];
        [self setExcuse:@""];
        
    }
    return self;
}

-(void)calculateSecondDate
{
        if ((numSaysHot > 2) && (numCheckMirror > 5))
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
