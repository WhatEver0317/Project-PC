//
//  FavoriteDetailDictioary.h
//  POCoffee
//
//  Created by GaoYuan on 16/1/7.
//  Copyright © 2016年 Yuan Gao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FavoriteDetailData : NSObject
@property (nonatomic, strong) NSString *coffeeName;
@property (nonatomic, strong) NSString *dripper;
@property (nonatomic, strong) NSString *coffeeVolume;
@property (nonatomic, strong) NSString *waterVolume;
@property (nonatomic, strong) NSString *waterTemperature;
@property (nonatomic, strong) NSString *cwRatio;
@end
