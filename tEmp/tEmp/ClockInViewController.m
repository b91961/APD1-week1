//
//  ClockInViewController.m
//  tEmp
//
//  Created by Jamal Moubarak on 5/8/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import "ClockInViewController.h"

@interface ClockInViewController ()

@end

@implementation ClockInViewController

- (void)viewDidLoad
{
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(updateTime) userInfo:nil repeats:YES];
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(updateDate) userInfo:nil repeats:YES];
    
    //set a rounded corner radius on timeView
    timeView.layer.cornerRadius = 10;
    timeView.layer.borderColor = [UIColor blackColor].CGColor;
    timeView.layer.borderWidth = 3.0f;
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)updateTime
{
    NSDate *date= [NSDate date];
    NSDateFormatter *formatter1 = [[NSDateFormatter alloc]init]; //for hour and minute
    
    formatter1.dateFormat = @"h:mm a";// use any format
    
    timeLabel.text = [formatter1 stringFromDate:date];
    
    //[formatter1 release];
}

-(void)updateDate
{
    NSDate *date= [NSDate date];
    NSDateFormatter *formatter2 = [[NSDateFormatter alloc]init];
    
    formatter2.dateFormat = @"EEEE, MMMM dd, yyyy";// use any format
    
    dateLabel.text = [formatter2 stringFromDate:date];
    
    //[formatter2 release];
}

- (void)viewDidAppear:(BOOL)animated
{
    [InPinField becomeFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onClockIn:(id)sender
{
    //set alert to give description of the app
    alert = [[UIAlertView alloc]
             initWithTitle:nil
             message:@"You have successfully Clocked In."
             delegate:nil
             cancelButtonTitle:@"Close"
             otherButtonTitles:nil];
    [alert show];
    
    [self dismissViewControllerAnimated:TRUE completion:nil];
}

@end
