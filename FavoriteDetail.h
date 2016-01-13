//
//  FavoriteDetail.h
//  POCoffee
//
//  Created by GaoYuan on 16/1/2.
//  Copyright © 2016年 Yuan Gao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Favorites;

NS_ASSUME_NONNULL_BEGIN

@interface FavoriteDetail : NSManagedObject

// Insert code here to declare functionality of your managed object subclass
+ (NSManagedObject *) fetchFavoriteDetailRelatedToEntity:(NSManagedObject *)entity
                                  inManagedObjectContext:(NSManagedObjectContext *)context;

@end

NS_ASSUME_NONNULL_END

#import "FavoriteDetail+CoreDataProperties.h"
