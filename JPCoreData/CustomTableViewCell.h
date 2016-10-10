//
//  CustomTableViewCell.h
//  JPCoreData
//
//  Created by Student P_05 on 09/10/16.
//  Copyright © 2016 Jagruti Patil. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *labelName;
@property (strong, nonatomic) IBOutlet UILabel *labelCompany;
@property (strong, nonatomic) IBOutlet UILabel *labelModel;

@end
