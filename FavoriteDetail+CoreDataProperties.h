//
//  FavoriteDetail+CoreDataProperties.h
//  POCoffee
//
//  Created by GaoYuan on 16/1/2.
//  Copyright © 2016年 Yuan Gao. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "FavoriteDetail.h"

NS_ASSUME_NONNULL_BEGIN

@interface FavoriteDetail (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *coffeeName;
@property (nullable, nonatomic, retain) NSNumber *coffeeVolume;
@property (nullable, nonatomic, retain) NSNumber *cwRatio;
@property (nullable, nonatomic, retain) NSString *dripper;
@property (nullable, nonatomic, retain) NSString *note;
@property (nullable, nonatomic, retain) NSNumber *preinfusionTime;
@property (nullable, nonatomic, retain) NSNumber *temperature;
@property (nullable, nonatomic, retain) NSNumber *timeMinutes;
@property (nullable, nonatomic, retain) NSNumber *timeSeconds;
@property (nullable, nonatomic, retain) NSNumber *waterVolume;
@property (nullable, nonatomic, retain) Favorites *favoriteDescription;

@end

NS_ASSUME_NONNULL_END
