//
//  EmpDetailViewController.h
//  tEmp
//
//  Created by Jamal Moubarak on 5/9/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EmployeeCustomClass.h"
@interface EmpDetailViewController : UIViewController
{
    IBOutlet UILabel *titleLabel;
    IBOutlet UILabel *secondaryLabel;
    IBOutlet UITextView *information2Label;
    IBOutlet UITextView *information3Label;
}

-(IBAction)onClose:(id)sender;

@property (nonatomic, strong)EmployeeCustomClass *currentEmp;
@end