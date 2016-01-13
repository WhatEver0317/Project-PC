//
//  Favorites.h
//  POCoffee
//
//  Created by GaoYuan on 16/1/2.
//  Copyright © 2016年 Yuan Gao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class FavoriteDetail;

NS_ASSUME_NONNULL_BEGIN

@interface Favorites : NSManagedObject

// Insert code here to declare functionality of your managed object subclass
+ (NSArray *) fetchAllFavoritesInManagedObjectContext:(NSManagedObjectContext *)context;

@end

NS_ASSUME_NONNULL_END

#import "Favorites+CoreDataProperties.h"
