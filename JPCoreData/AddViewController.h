//
//  AddViewController.h
//  JPCoreData
//
//  Created by Student P_05 on 05/10/16.
//  Copyright © 2016 Jagruti Patil. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface AddViewController : UIViewController
{
    UISegmentedControl *localSegment;
}

@property (strong, nonatomic) IBOutlet UITextField *nameTextField;
@property (strong, nonatomic) IBOutlet UITextField *modelTextField;
@property (strong, nonatomic) IBOutlet UITextField *companyTextField;
- (IBAction)cancleAction:(id)sender;
- (IBAction)actionSave:(id)sender;
- (IBAction)segmentAction:(id)sender;

@end
