//
//  EmployeeCustomClass.m
//  tEmp
//
//  Created by Jamal Moubarak on 5/9/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import "EmployeeCustomClass.h"

@implementation EmployeeCustomClass

@synthesize usernameArray, pinArray, name, username, description, description2, description3, pin;

static EmployeeCustomClass* _sharedEmployeeInfo = nil;

+(EmployeeCustomClass*)sharedEmployeeInfo
{
    if (!_sharedEmployeeInfo)
    {
        _sharedEmployeeInfo = [[self alloc] init];
    }
    return _sharedEmployeeInfo;
}

-(id)init
{
    if ((self = [super init]))
    {
        usernameArray = [[NSMutableArray alloc] init];
        pinArray = [[NSMutableArray alloc] init];
    }
    return self;
}

-(id)initWithEmployee:(NSString*)emp userEmp:(NSString *)userEmp position:(NSString*)position phone:(NSString*)phone email:(NSString*)email empPin:(NSString*)empPin
{
    if ((self = [super init]))
    {
        name = emp;
        username = userEmp;
        description = position;
        description2 = phone;
        description3 = email;
        pin = empPin;
    }
    return self;
}

@end
