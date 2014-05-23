//
//  DataManager.h
//  tEmp
//
//  Created by Jamal Moubarak on 5/22/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataManager : NSObject
{
    NSMutableString *employeeString;
}

+(DataManager*)sharedDataManager;

@property (nonatomic, strong)NSMutableString *employeeString;

@end
