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
	
    loginDictionary = [[NSDictionary alloc] initWithObjects:[NSArray arrayWithObjects:@"1234", @"5678", @"9012", @"3456", @"7890", @"2345", @"6789", @"0123", @"4567", @"8901", @"0987", @"6543", @"2109", @"8765", @"4321", @"1111", @"2222", @"3333", @"4444", @"5555", nil]
                                                    forKeys:[NSArray arrayWithObjects:@"jamal", @"jonj", @"jons", @"connor", @"zach", @"kenny", @"justin", @"miley", @"brad", @"johnny", @"marshall", @"jude", @"shawn", @"jennifer", @"matt", @"jonst", @"adam", @"jim", @"ron", @"bruce", nil]];
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
    if ([[loginDictionary objectForKey:InUserField.text]isEqualToString:InPinField.text])
    {
        NSString *mySuccess = [NSString stringWithFormat:@"%@ has successfully Clocked In.", InUserField.text];
        
        alert = [[UIAlertView alloc]
                 initWithTitle:@"Successful Clock In"
                 message:mySuccess
                 delegate:nil
                 cancelButtonTitle:@"Close"
                 otherButtonTitles:nil];
        [alert show];
    }
    else
    {
        NSString *myError = [NSString stringWithFormat:@"%@ incorrect Clock In attempt.", InUserField.text];
        
        alert = [[UIAlertView alloc]
                 initWithTitle:@"Incorrect Clock In"
                 message:myError
                 delegate:nil
                 cancelButtonTitle:@"Close"
                 otherButtonTitles:nil];
        [alert show];
    }
    //[self dismissViewControllerAnimated:TRUE completion:nil];
}

@end
