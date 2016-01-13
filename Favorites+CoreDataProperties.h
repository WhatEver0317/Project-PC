//
//  Favorites+CoreDataProperties.h
//  POCoffee
//
//  Created by GaoYuan on 16/1/2.
//  Copyright © 2016年 Yuan Gao. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Favorites.h"

NS_ASSUME_NONNULL_BEGIN

@interface Favorites (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *favoriteDescription;
@property (nullable, nonatomic, retain) FavoriteDetail *favoriteDetail;

@end

NS_ASSUME_NONNULL_END
