//
//  CustomCell.h
//  tEmp
//
//  Created by Jamal Moubarak on 5/9/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell
{
    IBOutlet UILabel *firstLabel;
}

-(void)refreshCellWithInfo:(NSString*)firstString;

@end
