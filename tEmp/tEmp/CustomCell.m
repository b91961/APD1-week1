//
//  CustomCell.m
//  tEmp
//
//  Created by Jamal Moubarak on 5/9/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

-(void)refreshCellWithInfo:(NSString*)firstString
{
    firstLabel.text = firstString;
}

@end
