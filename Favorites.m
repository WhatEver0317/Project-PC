//
//  Favorites.m
//  POCoffee
//
//  Created by GaoYuan on 16/1/2.
//  Copyright © 2016年 Yuan Gao. All rights reserved.
//

#import "Favorites.h"
#import "FavoriteDetail.h"


@implementation Favorites

// Insert code here to add functionality to your managed object subclass

+ (NSArray *) fetchAllFavoritesInManagedObjectContext:(NSManagedObjectContext *)context
{
    NSArray *favorites = nil;
    
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entityDescription = [NSEntityDescription entityForName:@"Favorites"
                                                         inManagedObjectContext:context];
    [fetchRequest setEntity:entityDescription];
    
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"favoriteDescription"
                                                                   ascending:YES];
    NSArray *sortDescriptors = @[sortDescriptor];
    [fetchRequest setSortDescriptors:sortDescriptors];
    
    NSError *error;
    favorites = [context executeFetchRequest:fetchRequest error:&error];
    
    if (!favorites || error || [favorites count] > 1) {
        // Handle the error.
    }
    
    return favorites;
}

@end
