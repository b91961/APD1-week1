//
//  TimecardViewController.m
//  tEmp
//
//  Created by Jamal Moubarak on 5/8/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import "TimecardViewController.h"

@interface TimecardViewController ()

@end

@implementation TimecardViewController

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
    //rotate label in 45 degrees
    nameLabel.transform = CGAffineTransformMakeRotation( M_PI/-2 );
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

-(IBAction)onShare:(UIButton*)button
{
    UIImage *myTimecard = [UIImage imageNamed:@"TimecarBackgroundNew.png"];
    NSArray *timecardArray = [NSArray arrayWithObjects:@"Here is my timecard for the week.", myTimecard, nil];
    //share
    UIActivityViewController *controller = [[UIActivityViewController alloc] initWithActivityItems:timecardArray applicationActivities:nil];
    [self presentViewController:controller animated:YES completion:nil];
}

@end
