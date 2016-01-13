//
//  Step1View.h
//  POCoffee
//
//  Created by GaoYuan on 16/1/10.
//  Copyright © 2016年 Yuan Gao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Step1View : UIView
@property (strong, nonatomic) IBOutlet UILabel *coffeeNameLabel;
@property (strong, nonatomic) IBOutlet UILabel *dripperLabel;
@property (strong, nonatomic) IBOutlet UILabel *coffeeVolumeLabel;
@property (strong, nonatomic) IBOutlet UILabel *waterVolumeLabel;
@property (strong, nonatomic) IBOutlet UILabel *wcRatioLabel;
@property (strong, nonatomic) IBOutlet UILabel *waterTemperatureLabel;


@property (strong, nonatomic) IBOutlet UITextField *coffeeNameTextField;
@end
