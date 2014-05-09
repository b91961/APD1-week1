//
//  ClockOutViewController.m
//  tEmp
//
//  Created by Jamal Moubarak on 5/8/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import "ClockOutViewController.h"

@interface ClockOutViewController ()

@end

@implementation ClockOutViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(updateTime) userInfo:nil repeats:YES];
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(updateDate) userInfo:nil repeats:YES];
    
    //set a rounded corner radius on timeView
    timeView.layer.cornerRadius = 10;
    timeView.layer.borderColor = [UIColor blackColor].CGColor;
    timeView.layer.borderWidth = 3.0f;
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
    [outPinField becomeFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(IBAction)onClockOut:(id)sender
{
    //set alert to give description of the app
    alert = [[UIAlertView alloc]
             initWithTitle:nil
             message:@"You have successfully Clocked Out."
             delegate:nil
             cancelButtonTitle:@"Close"
             otherButtonTitles:nil];
    [alert show];
    
    [self dismissViewControllerAnimated:TRUE completion:nil];
}

@end
