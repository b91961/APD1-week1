//
//  EmployeeViewController.h
//  tEmp
//
//  Created by Jamal Moubarak on 5/8/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EmployeeCustomClass.h"
#import "DataManager.h"

@interface EmployeeViewController : UIViewController <NSURLConnectionDataDelegate, NSXMLParserDelegate, UITableViewDataSource, UITableViewDelegate>
{
    EmployeeCustomClass *employeeInfo;
    
    NSMutableArray *empArray;
    NSMutableArray *usernameArray;
    NSMutableArray *pinArray;
    NSMutableArray *locUsernameArray;
    
    DataManager *stringFile;
    
    NSURLRequest *request;
    NSURL *url;
    NSURLConnection *connection;
    NSMutableData *requestData;
    NSMutableString *employeeString;
    NSMutableArray *employees;
    
    NSMutableString *name;
    NSMutableString *username;
    NSMutableString *description;
    NSMutableString *description2;
    NSMutableString *description3;
    NSMutableString *pin;
    
    NSMutableString *currentElementValue;
}
@property (weak, nonatomic) IBOutlet UITableView *_myTableView;

@property (nonatomic, strong)NSMutableArray *usernameArray;
@property (nonatomic, strong)NSMutableArray *pinArray;

-(IBAction)onClick:(id)sender;

@end
