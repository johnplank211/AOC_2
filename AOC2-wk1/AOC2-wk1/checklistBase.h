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
    int femaleName;
}

typedef enum{
    BECKY,
    JULIE,
    JESSICA
} femaleName;


@property NSString *kids;
@property int numberOfCats;
@property int numberOfBoyfriends;

-(id)init;

-(void)calculateSecondDate;


@end
