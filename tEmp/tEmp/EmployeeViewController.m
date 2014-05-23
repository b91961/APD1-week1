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
#import "DataManager.h"

@interface EmployeeViewController ()

@end

@implementation EmployeeViewController
@synthesize usernameArray;
@synthesize pinArray;
@synthesize _myTableView;

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
    employees = [[NSMutableArray alloc] init];
    
    url = [[NSURL alloc] initWithString:@"http://meltbg.com/employeeXML.xml"];
    
    request = [[NSURLRequest alloc] initWithURL:url];
    if (request != nil)
    {
        connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
        
        //create our mutableData object
        requestData = [NSMutableData data];
    }
    
    //load my xml data in a string
    [DataManager sharedDataManager];

    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    //check if we have valid data
    if (data != nil)
    {
        //add this data to our existing requestData
        [requestData appendData:data];
    }
}

//this function is called when we have all the data from the request
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    //clear old string of xml data
    employeeString = nil;
    
    NSString *requestString = [[NSString alloc] initWithData:requestData encoding: NSASCIIStringEncoding];
    DataManager *loadFile = [DataManager sharedDataManager];
    if (loadFile != nil)
    {
        employeeString = loadFile.employeeString;
        if (employeeString != nil)
        {
            [employeeString appendString:requestString];
        }
    }
    
    //find the location to save data to
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    
    //go into directory and name file
    NSString *fullPath = [[NSString alloc] initWithFormat:@"%@/%@", documentsDirectory, @"employeeXML.xml"];
    
    //write data to new file
    [requestData writeToFile:fullPath atomically:true];
    
    NSData *xmlData = [self GetFileDataFromFile:@"employeeXML.xml"];
    
    NSXMLParser *parser = [[NSXMLParser alloc] initWithData:xmlData];
    if (parser != nil)
    {
        [parser setDelegate:self];
        [parser parse];
    }
    
    //NSLog(@"%@", requestString);
    
    [self._myTableView reloadData];
    
}

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict
{
    //we are parsing the rate tag
    if ([elementName isEqualToString:@"Employee"])
    {
        name = [attributeDict valueForKey:@"Name"];
    }
    if ([elementName isEqualToString:@"username"])
    {
        username = [[NSMutableString alloc] init];
    }
    if ([elementName isEqualToString:@"description"])
    {
        description = [[NSMutableString alloc] init];
    }
    if ([elementName isEqualToString:@"description2"])
    {
        description2 = [[NSMutableString alloc] init];
    }
    if ([elementName isEqualToString:@"description3"])
    {
        description3 = [[NSMutableString alloc] init];
    }
    if ([elementName isEqualToString:@"pin"])
    {
        pin = [[NSMutableString alloc] init];
    }
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string
{
    //  Removing whitspace and newline characters
    string = [string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    if (!currentElementValue)
    {
        // currentElementValue is an NSMutableString instance variable
        currentElementValue = [[NSMutableString alloc] initWithString:string];
    }
    [currentElementValue appendString:string];
}

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
    if ([elementName isEqualToString:@"Employee"])
    {
        return;
    }
    if( [elementName isEqualToString:@"username"])
    {
        [username setString:currentElementValue];
        currentElementValue = nil;
        return;
    }
    if ([elementName isEqualToString:@"description"])
    {
        [description setString:currentElementValue];
        currentElementValue = nil;
        return;
    }
    if ([elementName isEqualToString:@"description2"])
    {
        [description2 setString:currentElementValue];
        currentElementValue = nil;
        return;
    }
    if ([elementName isEqualToString:@"description3"])
    {
        [description3 setString:currentElementValue];
        currentElementValue = nil;
        return;
    }
    if ([elementName isEqualToString:@"pin"])
    {
        [pin setString:currentElementValue];
        currentElementValue = nil;
        //return;
    }
    
    EmployeeCustomClass *item = [[EmployeeCustomClass alloc] initWithEmployee:name userEmp:username position:description phone:description2 email:description3 empPin:pin];
    if (item != nil)
    {
        [employees addObject:item];
    }
    
    currentElementValue = nil;
}

-(NSData*)GetFileDataFromFile:(NSString*)filename
{
    //clear any previous path
    NSString *filePath = nil;
    
    //create the file manager
    NSFileManager *fileManager = [NSFileManager defaultManager];
    //get the path to the application documents directory
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    filePath = [documentsDirectory stringByAppendingPathComponent:filename];
    
    if ([fileManager fileExistsAtPath:filePath])
    {
        return [NSData dataWithContentsOfFile:filePath];
    }
    //otherwise we return nothing
    return nil;
}

- (void)viewDidAppear:(BOOL)animated
{
    [_myTableView reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //set number of rows to the amount of objects in the array.
    return [employees count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCell"];
    if (cell != nil)
    {
        EmployeeCustomClass *currentEmp = [employees objectAtIndex:indexPath.row];
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
        NSIndexPath *indexPath = [_myTableView indexPathForCell:cell];
        
        // get the string from the array based on the item in the table view we clicked on.
        EmployeeCustomClass *currentEmp = [employees objectAtIndex:indexPath.row];
        
        empDetailViewController.currentEmp = currentEmp;
    }
}

-(IBAction)onClick:(id)sender
{
    [self dismissViewControllerAnimated:TRUE completion:nil];
}

@end
