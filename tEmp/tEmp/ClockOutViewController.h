//
//  ClockOutViewController.h
//  tEmp
//
//  Created by Jamal Moubarak on 5/8/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EmployeeCustomClass.h"

@interface ClockOutViewController : UIViewController
{
    IBOutlet UILabel *timeLabel;
    IBOutlet UILabel *dateLabel;
    IBOutlet UIView *timeView;
    IBOutlet UITextField *outUserField;
    IBOutlet UITextField *outPinField;
    IBOutlet UIButton *clockOutButton;
    UIAlertView *alert;
    
    NSDictionary *logoutDictionary;
}

-(IBAction)onClockOut:(id)sender;

@end
