//
//  ViewController.h
//  POCoffee
//
//  Created by GaoYuan on 15/12/30.
//  Copyright © 2015年 Yuan Gao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FavoriteDetailData.h"
#import "Step1View.h"

@interface Step1ViewController : UIViewController {
    Step1View *_step1View;
}

@property (nonatomic, strong) FavoriteDetailData *favoriteDetailData;

@end

