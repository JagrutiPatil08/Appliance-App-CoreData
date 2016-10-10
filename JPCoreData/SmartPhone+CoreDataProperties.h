//
//  SmartPhone+CoreDataProperties.h
//  JPCoreData
//
//  Created by Student P_05 on 09/10/16.
//  Copyright © 2016 Jagruti Patil. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "SmartPhone.h"

NS_ASSUME_NONNULL_BEGIN

@interface SmartPhone (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *company;
@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSString *price;

@end

NS_ASSUME_NONNULL_END
