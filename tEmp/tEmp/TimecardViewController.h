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
}

-(IBAction)onShare:(UIButton*)button;

@end
