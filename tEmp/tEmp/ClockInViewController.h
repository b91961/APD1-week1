//
//  ClockInViewController.h
//  tEmp
//
//  Created by Jamal Moubarak on 5/8/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ClockInViewController : UIViewController
{
    IBOutlet UILabel *timeLabel;
    IBOutlet UILabel *dateLabel;
    IBOutlet UIView *timeView;
    IBOutlet UITextField *InPinField;
    IBOutlet UIButton *clockInButton;
    UIAlertView *alert;
}

-(IBAction)onClockIn:(id)sender;


@end
