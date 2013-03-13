//
//  DiskInterface.h
//  AOC2-wk1
//
//  Created by john plank on 3/12/13.
//  Copyright (c) 2013 john plank. All rights reserved.
//

#ifndef AOC2_wk1_DiskInterface_h
#define AOC2_wk1_DiskInterface_h

@protocol DiskInterface <NSObject>

-(void)LoadFromDisk;
-(bool)SaveFromDisk;

@end

#endif
