//
//  EmpDetailViewController.m
//  tEmp
//
//  Created by Jamal Moubarak on 5/9/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import "EmpDetailViewController.h"
#import "CustomCell.h"

@interface EmpDetailViewController ()

@end

@implementation EmpDetailViewController

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
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated
{
    titleLabel.text = self.currentEmp.name;
    secondaryLabel.text = self.currentEmp.description;
    information2Label.text = self.currentEmp.description2;
    information3Label.text = self.currentEmp.description3;
    
    information2Label.editable = NO;
    information2Label.dataDetectorTypes = UIDataDetectorTypeAll;
    information3Label.editable = NO;
    information3Label.dataDetectorTypes = UIDataDetectorTypeAll;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onClose:(id)sender
{
    if ([sender tag] == 0)
    {
        EmpDetailViewController *empDetailView = [[EmpDetailViewController alloc] initWithNibName:@"empDetailView" bundle:nil];
        if (empDetailView !=nil)
        {
            [self dismissViewControllerAnimated:TRUE completion:nil];
        }
    } else
    {
        //Do Nothing
    }
}

@end
