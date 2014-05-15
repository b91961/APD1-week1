//
//  EmployeeCustomClass.h
//  tEmp
//
//  Created by Jamal Moubarak on 5/9/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EmployeeCustomClass : NSObject
{
    NSMutableArray *usernameArray;
    NSMutableArray *pinArray;
    
    NSString *name;
    NSString *username;
    NSString *description;
    NSString *description2;
    NSString *description3;
    NSString *pin;
}

+(EmployeeCustomClass*)sharedEmployeeInfo;

-(id)initWithEmployee:(NSString*)emp userEmp:(NSString *)userEmp position:(NSString*)position phone:(NSString*)phone email:(NSString*)email empPin:(NSString*)empPin;

@property (nonatomic, strong)NSMutableArray *usernameArray;
@property (nonatomic, strong)NSMutableArray *pinArray;
@property (nonatomic, strong)NSString *name;
@property (nonatomic, strong)NSString *username;
@property (nonatomic, strong)NSString *description;
@property (nonatomic, strong)NSString *description2;
@property (nonatomic, strong)NSString *description3;
@property (nonatomic, strong)NSString *pin;
@end
