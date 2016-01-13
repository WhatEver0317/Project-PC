//
//  FavoritesTableViewController.h
//  POCoffee
//
//  Created by GaoYuan on 15/12/30.
//  Copyright © 2015年 Yuan Gao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FavoriteDetailData.h"

@interface FavoritesTableViewController : UITableViewController

@property (nonatomic, strong) NSDictionary *favoriteDetail;
@property (nonatomic, strong) FavoriteDetailData *favoriteDetailData;
@end
