//
//  TV+CoreDataProperties.h
//  JPCoreData
//
//  Created by Student P_05 on 09/10/16.
//  Copyright © 2016 Jagruti Patil. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "TV.h"

NS_ASSUME_NONNULL_BEGIN

@interface TV (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *model;
@property (nullable, nonatomic, retain) NSString *price;
@property (nullable, nonatomic, retain) NSString *year;

@end

NS_ASSUME_NONNULL_END
