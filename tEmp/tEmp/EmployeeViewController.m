//
//  EmployeeViewController.m
//  tEmp
//
//  Created by Jamal Moubarak on 5/8/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import "EmployeeViewController.h"
#import "EmpDetailViewController.h"
#import "CustomCell.h"
#import "EmployeeCustomClass.h"

@interface EmployeeViewController ()

@end

@implementation EmployeeViewController

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
    // create custom objects
    EmployeeCustomClass *emp1 = [[EmployeeCustomClass alloc] init];
    emp1.name = @"Jamal Moubarak";
    emp1.description = @"Owner";
    emp1.description2 = @"(734) 819-1211";
    emp1.description3 = @"moubarakjamal@gmail.com";
    
    EmployeeCustomClass *emp2 = [[EmployeeCustomClass alloc] init];
    emp2.name = @"Jon Jenkins";
    emp2.description = @"Installer";
    emp2.description2 = @"(419) 297-9255";
    emp2.description3 = @"jonjenkins@gmail.com";
    
    EmployeeCustomClass *emp3 = [[EmployeeCustomClass alloc] init];
    emp3.name = @"Jon Smith";
    emp3.description = @"Sales";
    emp3.description2 = @"(419) 832-1711";
    emp3.description3 = @"jonsmith@gmail.com";
    
    EmployeeCustomClass *emp4 = [[EmployeeCustomClass alloc] init];
    emp4.name = @"Connor Bales";
    emp4.description = @"Installer";
    emp4.description2 = @"(419) 532-7489";
    emp4.description3 = @"connorbales@gmail.com";
    
    EmployeeCustomClass *emp5 = [[EmployeeCustomClass alloc] init];
    emp5.name = @"Zach Smith";
    emp5.description = @"Installer";
    emp5.description2 = @"(419) 819-7777";
    emp5.description3 = @"zacsmith@gmail.com";
    
    EmployeeCustomClass *emp6 = [[EmployeeCustomClass alloc] init];
    emp6.name = @"Kenny Rogers";
    emp6.description = @"Installer";
    emp6.description2 = @"(567) 430-0069";
    emp6.description3 = @"kennyrogers@gmail.com";
    
    EmployeeCustomClass *emp7 = [[EmployeeCustomClass alloc] init];
    emp7.name = @"Justin Beiber";
    emp7.description = @"Sales";
    emp7.description2 = @"(419) 460-8155";
    emp7.description3 = @"justinbeiber@gmail.com";
    
    EmployeeCustomClass *emp8 = [[EmployeeCustomClass alloc] init];
    emp8.name = @"Miley Cyrus";
    emp8.description = @"Office";
    emp8.description2 = @"(419) 675-8875";
    emp8.description3 = @"mileycyrus@gmail.com";
    
    EmployeeCustomClass *emp9 = [[EmployeeCustomClass alloc] init];
    emp9.name = @"Brad Pitt";
    emp9.description = @"Installer";
    emp9.description2 = @"(313) 602-1113";
    emp9.description3 = @"bradpitt@gmail.com";
    
    EmployeeCustomClass *emp10 = [[EmployeeCustomClass alloc] init];
    emp10.name = @"Johnny Depp";
    emp10.description = @"Sales";
    emp10.description2 = @"(419) 465-7654";
    emp10.description3 = @"johnnydepp@gmail.com";
    
    EmployeeCustomClass *emp11 = [[EmployeeCustomClass alloc] init];
    emp11.name = @"Marshall Mathers";
    emp11.description = @"Installer";
    emp11.description2 = @"(419) 488-8888";
    emp11.description3 = @"marshallmathers@gmail.com";
    
    EmployeeCustomClass *emp12 = [[EmployeeCustomClass alloc] init];
    emp12.name = @"Jude Law";
    emp12.description = @"Installer";
    emp12.description2 = @"(734) 925-7589";
    emp12.description3 = @"judelaw@gmail.com";
    
    EmployeeCustomClass *emp13 = [[EmployeeCustomClass alloc] init];
    emp13.name = @"Shawn White";
    emp13.description = @"Installer";
    emp13.description2 = @"(419) 867-9283";
    emp13.description3 = @"shawnwhite@gmail.com";
    
    EmployeeCustomClass *emp14 = [[EmployeeCustomClass alloc] init];
    emp14.name = @"Jennifer Lopez";
    emp14.description = @"Office";
    emp14.description2 = @"(419) 360-5555";
    emp14.description3 = @"jenniferlopez@gmail.com";
    
    EmployeeCustomClass *emp15 = [[EmployeeCustomClass alloc] init];
    emp15.name = @"Matt Damon";
    emp15.description = @"Sales";
    emp15.description2 = @"(734) 260-6499";
    emp15.description3 = @"mattdamon@gmail.com";
    
    EmployeeCustomClass *emp16 = [[EmployeeCustomClass alloc] init];
    emp16.name = @"Jon Stewart";
    emp16.description = @"Installer";
    emp16.description2 = @"(419) 787-7878";
    emp16.description3 = @"jonstewart@gmail.com";
    
    EmployeeCustomClass *emp17 = [[EmployeeCustomClass alloc] init];
    emp17.name = @"Adam Sandler";
    emp17.description = @"Sales";
    emp17.description2 = @"(567) 824-6080";
    emp17.description3 = @"adamsandler@gmail.com";
    
    EmployeeCustomClass *emp18 = [[EmployeeCustomClass alloc] init];
    emp18.name = @"Jim Carey";
    emp18.description = @"Manager";
    emp18.description2 = @"(419) 203-1009";
    emp18.description3 = @"jimcarey@gmail.com";
    
    EmployeeCustomClass *emp19 = [[EmployeeCustomClass alloc] init];
    emp19.name = @"Ron Burgandy";
    emp19.description = @"Sales";
    emp19.description2 = @"(419) 807-6645";
    emp19.description3 = @"ronburgandy@gmail.com";
    
    EmployeeCustomClass *emp20 = [[EmployeeCustomClass alloc] init];
    emp20.name = @"Bruce Willis";
    emp20.description = @"Installer";
    emp20.description2 = @"(419) 867-0007";
    emp20.description3 = @"brucewillis@gmail.com";
    
    //create an array with the custom objects
    empArray = [[NSMutableArray alloc] initWithObjects:emp1, emp2, emp3, emp4, emp5, emp6, emp7, emp8, emp9, emp10, emp11, emp12, emp13, emp14, emp15, emp16, emp17, emp18, emp19, emp20, nil];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated
{
    [myTableView reloadData];
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

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //set number of rows to the amount of objects in the array.
    return [empArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCell"];
    if (cell != nil)
    {
        EmployeeCustomClass *currentEmp = [empArray objectAtIndex:indexPath.row];
        [cell refreshCellWithInfo:currentEmp.name];
    }
    return cell;
}

// Go to Detail view.
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    EmpDetailViewController *empDetailViewController = segue.destinationViewController;
    if (empDetailViewController != nil)
    {
        UITableViewCell *cell = (UITableViewCell*)sender;
        NSIndexPath *indexPath = [myTableView indexPathForCell:cell];
        
        // get the string from the array based on the item in the table view we clicked on.
        EmployeeCustomClass *currentEmp = [empArray objectAtIndex:indexPath.row];
        
        empDetailViewController.currentEmp = currentEmp;
    }
}

-(IBAction)onClick:(id)sender
{
    [self dismissViewControllerAnimated:TRUE completion:nil];
}

@end
