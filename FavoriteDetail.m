//
//  FavoriteDetail.m
//  POCoffee
//
//  Created by GaoYuan on 16/1/2.
//  Copyright © 2016年 Yuan Gao. All rights reserved.
//

#import "FavoriteDetail.h"
#import "Favorites.h"

@implementation FavoriteDetail

// Insert code here to add functionality to your managed object subclass
+ (NSManagedObject *) fetchFavoriteDetailRelatedToEntity:(NSManagedObject *)entity
                        inManagedObjectContext:(NSManagedObjectContext *)context
{
    NSArray *objects = nil;
    
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entityDescription = [NSEntityDescription entityForName:@"FavoriteDetail"
                                                         inManagedObjectContext:context];
    [fetchRequest setEntity:entityDescription];
    
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"(favoriteDescription == %@) || (favoriteDescription = nil)", entity];
    
    [fetchRequest setPredicate:predicate];
    
    NSError *error;
    objects = [context executeFetchRequest:fetchRequest error:&error];
    
    if (!objects || error || [objects count] != 1) {
        // Handle the error.
    }
    
    return [objects firstObject];
}

@end
