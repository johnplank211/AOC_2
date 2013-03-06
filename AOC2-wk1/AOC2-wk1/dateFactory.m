//
//  dateFactory.m
//  AOC2-wk1
//
//  Created by john plank on 3/6/13.
//  Copyright (c) 2013 john plank. All rights reserved.
//

#import "dateFactory.h"

@implementation dateFactory

+(checklistBase *)createDate:(int)femaleName
{
    if (femaleName == BECKY)
    {
        return [[Becky alloc] init];
    }
    if (femaleName == JULIE)
    {
        return [[Julie alloc] init];
    }
    if (femaleName JESSICA)
    {
        return [[Jessica alloc] init];
    }
    else return nil;
}






@end
