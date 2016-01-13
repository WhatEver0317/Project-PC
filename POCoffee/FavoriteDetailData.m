//
//  FavoriteDetailDictioary.m
//  POCoffee
//
//  Created by GaoYuan on 16/1/7.
//  Copyright © 2016年 Yuan Gao. All rights reserved.
//

#import "FavoriteDetailData.h"

@implementation FavoriteDetailData


- (instancetype)init
{
    self = [super init];
    if (self) {
        self.coffeeName = @"";
        self.dripper = @"";
        self.coffeeVolume = @"0";
        self.waterVolume = @"";
        self.waterTemperature = @"0";
        self.cwRatio = @"0";
    }
    return self;
}
@end
