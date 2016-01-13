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
@property (strong, nonatomic) IBOutlet UILabel *wcRatioLabel;
@property (strong, nonatomic) IBOutlet UILabel *waterVolumeLabel;
@property (strong, nonatomic) IBOutlet UILabel *waterTemperatureLabel;

@property (strong, nonatomic) IBOutlet UITextField *coffeeNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *dripperTextField;
@property (strong, nonatomic) IBOutlet UITextField *coffeeVolumeTextField;
@property (strong, nonatomic) IBOutlet UITextField *wcRatioTextField;
@property (strong, nonatomic) IBOutlet UITextField *waterVolumeTextField;
@property (strong, nonatomic) IBOutlet UITextField *waterTemperatureTextField;
@end
