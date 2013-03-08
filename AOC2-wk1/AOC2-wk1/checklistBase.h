//
//  checklistBase.h
//  AOC2-wk1
//
//  Created by john plank on 3/6/13.
//  Copyright (c) 2013 john plank. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface checklistBase : NSObject

{
    int femaleClass;
}
//setting up the dates as names instead of numbers
typedef enum{
    BECKY,
    JULIE,
    JESSICA
} femaleClass;

@property int dateTimeMin;
@property (strong) NSString *femaleName;
@property int kids;
@property int numberOfCats;
@property int numberOfBoyfriends;
@property (strong) NSString *excuse;




-(id)init;

-(void)calculateSecondDate;


@end
