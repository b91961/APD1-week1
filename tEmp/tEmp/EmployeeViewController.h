//
//  EmployeeViewController.h
//  tEmp
//
//  Created by Jamal Moubarak on 5/8/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EmployeeCustomClass.h"

@interface EmployeeViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    EmployeeCustomClass *employeeInfo;
    
    IBOutlet UITableView *myTableView;
    NSMutableArray *empArray;
    NSMutableArray *usernameArray;
    NSMutableArray *pinArray;
    NSMutableArray *locUsernameArray;
}
@property (nonatomic, strong)NSMutableArray *usernameArray;
@property (nonatomic, strong)NSMutableArray *pinArray;

-(IBAction)onClick:(id)sender;

@end
