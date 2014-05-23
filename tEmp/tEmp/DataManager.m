//
//  DataManager.m
//  tEmp
//
//  Created by Jamal Moubarak on 5/22/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import "DataManager.h"

@implementation DataManager

@synthesize employeeString;

static DataManager* _sharedDataManager = nil;

+(DataManager*)sharedDataManager
{
    if (!_sharedDataManager)
    {
        _sharedDataManager = [[self alloc] init];
    }
    return _sharedDataManager;
}

-(id)init
{
    if ((self = [super init]))
    {
        employeeString = [[NSMutableString alloc] init];
    }
    return self;
}

@end
