//
//  Becky.m
//  AOC2-wk1
//
//  Created by john plank on 3/6/13.
//  Copyright (c) 2013 john plank. All rights reserved.
//

#import "Becky.h"

@implementation Becky

@synthesize personality, selfAbsorbed;


-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setFemaleName:@"Becky"];
        [self setNumberOfCats:22];
        [self setNumberOfBoyfriends:12];
        [self setKids:@"Yes"];
        [self setPersonality:@"Crap"];
        [self setSelfAbsorbed:@"Very"];
        
    }
    return self;
}

-(void)calculateSecondDate
{
   if (personality == @"Crap")
   {
       NSLog(@"F this");
   }
}

@end
