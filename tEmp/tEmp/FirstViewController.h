//
//  FirstViewController.h
//  tEmp
//
//  Created by Jamal Moubarak on 5/8/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController
{
    IBOutlet UILabel *timeLabel;
    IBOutlet UILabel *dateLabel;
    IBOutlet UIView *timeView;
    IBOutlet UILabel *statusLabel;
}

-(IBAction)onOut:(id)sender;
-(IBAction)onIn:(id)sender;

@end
