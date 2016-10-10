//
//  ViewController.m
//  JPCoreData
//
//  Created by Student P_05 on 05/10/16.
//  Copyright © 2016 Jagruti Patil. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
-(NSManagedObjectContext *)managedObjectContext {
    
    NSManagedObjectContext *context = nil;
    
    id delegate = [[UIApplication sharedApplication]delegate];
    
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        
        context = [delegate managedObjectContext];
        
    }
    return  context;
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




-(void)fetchDeviceFromCoreData {
    NSManagedObjectContext *context = [self managedObjectContext];
    
    if (localSegment.selectedSegmentIndex == 0) {
        
        NSFetchRequest *fetchRequest = [[NSFetchRequest alloc]initWithEntityName:@"Device"];
        
        NSError *error;
        
        TV= [[context executeFetchRequest:fetchRequest error:&error]mutableCopy];
        
        if (error) {
            
            NSLog(@"%@",error.localizedDescription);
            
        }
        else {
            [self.tableView reloadData];
            
        }
    }
    else if (localSegment.selectedSegmentIndex == 1) {
        
        NSFetchRequest *fetchRequest = [[NSFetchRequest alloc]initWithEntityName:@"Phone"];
        
        NSError *error;
        
        SmartPhone = [[context executeFetchRequest:fetchRequest error:&error]mutableCopy];
        
        if (error) {
            
            NSLog(@"%@",error.localizedDescription);
            
        }
        else {
            [self.tableView reloadData];
            
        }
        
    }
    else if (localSegment.selectedSegmentIndex == 2) {
       NSFetchRequest *fetchRequest = [[NSFetchRequest alloc]initWithEntityName:@"AC"];
        
        
        NSError *error;
        
        AC= [[context executeFetchRequest:fetchRequest error:&error]mutableCopy];
        
        if (error) {
            
            NSLog(@"%@",error.localizedDescription);
            
        }
        else {
            [self.tableView reloadData];
            
        }
        
    }
    
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (localSegment.selectedSegmentIndex == 0 ) {
        return TV.count;
    }
    else if (localSegment.selectedSegmentIndex == 1) {
        return SmartPhone.count;
    }
    else if (localSegment.selectedSegmentIndex == 2) {
        return AC.count;
        
    }
    
    return 0;
    
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"device_cell"];
    
    if (localSegment.selectedSegmentIndex == 0) {
        
        NSManagedObject *device = [TV objectAtIndex:indexPath.row];
        
        cell.labelName.text = [device valueForKey:@"year"];
        cell.labelModel.text = [device valueForKey:@"model"];
        cell.labelCompany.text = [device valueForKey:@"price"];
        
    }
    
    else if (localSegment.selectedSegmentIndex == 1) {
        
        NSManagedObject *device = [SmartPhone objectAtIndex:indexPath.row];
        
        cell.labelName.text = [device valueForKey:@"company"];
        cell.labelModel.text = [device valueForKey:@"name"];
        cell.labelCompany.text = [device valueForKey:@"price"];
        
    }
    else if (localSegment.selectedSegmentIndex == 2) {
        
        NSManagedObject *device = [AC objectAtIndex:indexPath.row];
        
        cell.labelName.text = [device valueForKey:@"year"];
        cell.labelModel.text = [device valueForKey:@"model"];
        //   cell.labelcompany.text = [device valueForKey:@"price"];
        
    }
    
    
    return  cell;
}

-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return YES;
    
}

-(void)deleteEntry: (NSIndexPath *)indexpath {
    NSManagedObjectContext *context = [self managedObjectContext];
    
    [context deleteObject:[TV objectAtIndex:indexpath.row]];
    NSError *error;
    if ([context save:&error]) {
        NSLog(@"deleted");
        [self fetchDeviceFromCoreData];
    }
    else {
        //
    }
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        [self deleteEntry:indexPath];
        
    }
    else {
        NSLog(@"Can Not deleted");
        
    }
}





- (IBAction)addBarButtonAction:(id)sender
{
    AddViewController *addView = [self.storyboard instantiateViewControllerWithIdentifier:@"AddViewController"];
    
    [self.navigationController pushViewController:addView animated:YES];
    

}

- (IBAction)actionSegment:(id)sender {
    localSegment = sender;
    NSInteger i;
    switch (localSegment.selectedSegmentIndex ==  i) {
        case 0:
            [self.tableView reloadData];
            break;
        case 1:
            [self.tableView reloadData];
            break;
        case 2:
            [self.tableView reloadData];
            break;
            
            
        default:
            break;
    }

}
@end
