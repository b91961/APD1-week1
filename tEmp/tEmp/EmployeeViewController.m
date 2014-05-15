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
@synthesize usernameArray;
@synthesize pinArray;

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
    emp1.username = @"jamal";
    emp1.description = @"Owner";
    emp1.description2 = @"(734) 819-1211";
    emp1.description3 = @"moubarakjamal@gmail.com";
    emp1.pin = @"1234";
    
    EmployeeCustomClass *emp2 = [[EmployeeCustomClass alloc] init];
    emp2.name = @"Jon Jenkins";
    emp2.username = @"jonj";
    emp2.description = @"Installer";
    emp2.description2 = @"(419) 297-9255";
    emp2.description3 = @"jonjenkins@gmail.com";
    emp2.pin = @"5678";
    
    EmployeeCustomClass *emp3 = [[EmployeeCustomClass alloc] init];
    emp3.name = @"Jon Smith";
    emp3.username = @"jons";
    emp3.description = @"Sales";
    emp3.description2 = @"(419) 832-1711";
    emp3.description3 = @"jonsmith@gmail.com";
    emp3.pin = @"9012";
    
    EmployeeCustomClass *emp4 = [[EmployeeCustomClass alloc] init];
    emp4.name = @"Connor Bales";
    emp4.username = @"connor";
    emp4.description = @"Installer";
    emp4.description2 = @"(419) 532-7489";
    emp4.description3 = @"connorbales@gmail.com";
    emp4.pin = @"3456";
    
    EmployeeCustomClass *emp5 = [[EmployeeCustomClass alloc] init];
    emp5.name = @"Zach Smith";
    emp5.username = @"zach";
    emp5.description = @"Installer";
    emp5.description2 = @"(419) 819-7777";
    emp5.description3 = @"zacsmith@gmail.com";
    emp5.pin = @"7890";
    
    EmployeeCustomClass *emp6 = [[EmployeeCustomClass alloc] init];
    emp6.name = @"Kenny Rogers";
    emp6.username = @"kenny";
    emp6.description = @"Installer";
    emp6.description2 = @"(567) 430-0069";
    emp6.description3 = @"kennyrogers@gmail.com";
    emp6.pin = @"2345";
    
    EmployeeCustomClass *emp7 = [[EmployeeCustomClass alloc] init];
    emp7.name = @"Justin Beiber";
    emp7.username = @"justin";
    emp7.description = @"Sales";
    emp7.description2 = @"(419) 460-8155";
    emp7.description3 = @"justinbeiber@gmail.com";
    emp7.pin = @"6789";
    
    EmployeeCustomClass *emp8 = [[EmployeeCustomClass alloc] init];
    emp8.name = @"Miley Cyrus";
    emp8.username = @"miley";
    emp8.description = @"Office";
    emp8.description2 = @"(419) 675-8875";
    emp8.description3 = @"mileycyrus@gmail.com";
    emp8.pin = @"0123";
    
    EmployeeCustomClass *emp9 = [[EmployeeCustomClass alloc] init];
    emp9.name = @"Brad Pitt";
    emp9.username = @"brad";
    emp9.description = @"Installer";
    emp9.description2 = @"(313) 602-1113";
    emp9.description3 = @"bradpitt@gmail.com";
    emp9.pin = @"4567";
    
    EmployeeCustomClass *emp10 = [[EmployeeCustomClass alloc] init];
    emp10.name = @"Johnny Depp";
    emp10.username = @"johnny";
    emp10.description = @"Sales";
    emp10.description2 = @"(419) 465-7654";
    emp10.description3 = @"johnnydepp@gmail.com";
    emp10.pin = @"8901";
    
    EmployeeCustomClass *emp11 = [[EmployeeCustomClass alloc] init];
    emp11.name = @"Marshall Mathers";
    emp11.username = @"marshall";
    emp11.description = @"Installer";
    emp11.description2 = @"(419) 488-8888";
    emp11.description3 = @"marshallmathers@gmail.com";
    emp11.pin = @"0987";
    
    EmployeeCustomClass *emp12 = [[EmployeeCustomClass alloc] init];
    emp12.name = @"Jude Law";
    emp12.username = @"jude";
    emp12.description = @"Installer";
    emp12.description2 = @"(734) 925-7589";
    emp12.description3 = @"judelaw@gmail.com";
    emp12.pin = @"6543";
    
    EmployeeCustomClass *emp13 = [[EmployeeCustomClass alloc] init];
    emp13.name = @"Shawn White";
    emp13.username = @"shawn";
    emp13.description = @"Installer";
    emp13.description2 = @"(419) 867-9283";
    emp13.description3 = @"shawnwhite@gmail.com";
    emp13.pin = @"2109";
    
    EmployeeCustomClass *emp14 = [[EmployeeCustomClass alloc] init];
    emp14.name = @"Jennifer Lopez";
    emp14.username = @"jennifer";
    emp14.description = @"Office";
    emp14.description2 = @"(419) 360-5555";
    emp14.description3 = @"jenniferlopez@gmail.com";
    emp14.pin = @"8765";
    
    EmployeeCustomClass *emp15 = [[EmployeeCustomClass alloc] init];
    emp15.name = @"Matt Damon";
    emp15.username = @"matt";
    emp15.description = @"Sales";
    emp15.description2 = @"(734) 260-6499";
    emp15.description3 = @"mattdamon@gmail.com";
    emp15.pin = @"4321";
    
    EmployeeCustomClass *emp16 = [[EmployeeCustomClass alloc] init];
    emp16.name = @"Jon Stewart";
    emp16.username = @"jonst";
    emp16.description = @"Installer";
    emp16.description2 = @"(419) 787-7878";
    emp16.description3 = @"jonstewart@gmail.com";
    emp16.pin = @"1111";
    
    EmployeeCustomClass *emp17 = [[EmployeeCustomClass alloc] init];
    emp17.name = @"Adam Sandler";
    emp17.username = @"adam";
    emp17.description = @"Sales";
    emp17.description2 = @"(567) 824-6080";
    emp17.description3 = @"adamsandler@gmail.com";
    emp17.pin = @"2222";
    
    EmployeeCustomClass *emp18 = [[EmployeeCustomClass alloc] init];
    emp18.name = @"Jim Carey";
    emp18.username = @"jim";
    emp18.description = @"Manager";
    emp18.description2 = @"(419) 203-1009";
    emp18.description3 = @"jimcarey@gmail.com";
    emp18.pin = @"3333";
    
    EmployeeCustomClass *emp19 = [[EmployeeCustomClass alloc] init];
    emp19.name = @"Ron Burgandy";
    emp19.username = @"ron";
    emp19.description = @"Sales";
    emp19.description2 = @"(419) 807-6645";
    emp19.description3 = @"ronburgandy@gmail.com";
    emp19.pin = @"4444";
    
    EmployeeCustomClass *emp20 = [[EmployeeCustomClass alloc] init];
    emp20.name = @"Bruce Willis";
    emp20.username = @"bruce";
    emp20.description = @"Installer";
    emp20.description2 = @"(419) 867-0007";
    emp20.description3 = @"brucewillis@gmail.com";
    emp20.pin = @"5555";
    
    //create an array with the custom objects
    empArray = [[NSMutableArray alloc] initWithObjects:emp1, emp2, emp3, emp4, emp5, emp6, emp7, emp8, emp9, emp10, emp11, emp12, emp13, emp14, emp15, emp16, emp17, emp18, emp19, emp20, nil];
    usernameArray = [[NSMutableArray alloc] initWithObjects:emp1.username, emp2.username, emp3.username, emp4.username, emp5.username, emp6.username, emp7.username, emp8.username, emp9.username, emp10.username, emp11.username, emp12.username, emp13.username, emp14.username, emp15.username, emp16.username, emp17.username, emp18.username, emp19.username, emp20.username, nil];
    pinArray = [[NSMutableArray alloc] initWithObjects:emp1.pin, emp2.pin, emp3.pin, emp4.pin, emp5.pin, emp6.pin, emp7.pin, emp8.pin, emp9.pin, emp10.pin, emp11.pin, emp12.pin, emp13.pin, emp14.pin, emp15.pin, emp16.pin, emp17.pin, emp18.pin, emp19.pin, emp20.pin, nil];
    
    EmployeeCustomClass *info = [EmployeeCustomClass sharedEmployeeInfo];
    if (info != nil)
    {
        usernameArray = info.usernameArray;
        if (usernameArray != nil)
        {
            [usernameArray addObject:emp1.username];
            [usernameArray addObject:emp2.username];
            [usernameArray addObject:emp3.username];
            [usernameArray addObject:emp4.username];
            [usernameArray addObject:emp5.username];
            [usernameArray addObject:emp6.username];
            [usernameArray addObject:emp7.username];
            [usernameArray addObject:emp8.username];
            [usernameArray addObject:emp9.username];
            [usernameArray addObject:emp10.username];
            [usernameArray addObject:emp11.username];
            [usernameArray addObject:emp12.username];
            [usernameArray addObject:emp13.username];
            [usernameArray addObject:emp14.username];
            [usernameArray addObject:emp15.username];
            [usernameArray addObject:emp16.username];
            [usernameArray addObject:emp17.username];
            [usernameArray addObject:emp18.username];
            [usernameArray addObject:emp19.username];
            [usernameArray addObject:emp20.username];
        }
    }
    
    employeeInfo = [EmployeeCustomClass sharedEmployeeInfo];
    locUsernameArray = employeeInfo.usernameArray;

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
