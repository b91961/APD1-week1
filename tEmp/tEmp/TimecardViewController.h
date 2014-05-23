//
//  TimecardViewController.h
//  tEmp
//
//  Created by Jamal Moubarak on 5/8/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TimecardViewController : UIViewController
{
    IBOutlet UILabel *nameLabel;
    IBOutlet UIImageView *timecard;
    IBOutlet UIButton *shareButton;
    IBOutlet UILabel *monInLabel;
    IBOutlet UILabel *monOutLabel;
    IBOutlet UILabel *tuesInLabel;
    IBOutlet UILabel *tuesOutLabel;
    IBOutlet UILabel *wedInLabel;
    IBOutlet UILabel *wedOutLabel;
    IBOutlet UILabel *thursInLabel;
    IBOutlet UILabel *thursOutLabel;
    IBOutlet UILabel *friInLabel;
    IBOutlet UILabel *friOutLabel;
    IBOutlet UILabel *satInLabel;
    IBOutlet UILabel *satOutLabel;
    IBOutlet UILabel *sunInLabel;
    IBOutlet UILabel *sunOutLabel;
    
    NSArray *timesArray;
}

-(IBAction)onShare:(UIButton*)button;

@end
