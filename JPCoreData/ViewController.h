//
//  ViewController.h
//  JPCoreData
//
//  Created by Student P_05 on 05/10/16.
//  Copyright © 2016 Jagruti Patil. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddViewController.h"
#import "CustomTableViewCell.h"
#import "AppDelegate.h"


@interface ViewController : UIViewController< UITableViewDelegate,UITableViewDataSource>
{
    NSMutableArray *TV;
    NSMutableArray *SmartPhone;
    NSMutableArray *AC;
    UISegmentedControl *localSegment;
}
@property (strong, nonatomic) IBOutlet UITableView *tableView;
- (IBAction)addBarButtonAction:(id)sender;

- (IBAction)actionSegment:(id)sender;

@end

