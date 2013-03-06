//
//  checklistBase.m
//  AOC2-wk1
//
//  Created by john plank on 3/6/13.
//  Copyright (c) 2013 john plank. All rights reserved.
//

#import "checklistBase.h"

@implementation checklistBase

-(id)init
{
    self = [ super init];
    if (self != nil)
    {
        [self setKids:nil];
        [self setNumberOfCats:0];
        [self setNumberOfBoyfriends:0];
    }
    return self;
}




-(void)calculateSecondDate
{
    //[self setKids: numberOfBoyfriends + numberOfCats];
}



@end
