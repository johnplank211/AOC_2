//
//  dateFactory.h
//  AOC2-wk1
//
//  Created by john plank on 3/6/13.
//  Copyright (c) 2013 john plank. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "checklistBase.h"
#import "Becky.h"
#import "Julie.h"
#import "Jessica.h"

@interface dateFactory : NSObject

+(checklistBase *)createDate:(int)dateType;

@end
