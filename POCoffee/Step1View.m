//
//  Step1View.m
//  POCoffee
//
//  Created by GaoYuan on 16/1/10.
//  Copyright © 2016年 Yuan Gao. All rights reserved.
//

#import "Step1View.h"
#import "GlobalConstants.h"

#define LABEL_VERTICAL_SPACING 10
#define TEXTFIELD_RIGHT_SPACING 10

@interface Step1View () <UITextFieldDelegate>

@end

@implementation Step1View

- (id)init {
    
    return [self initWithFrame:CGRectZero];
    
}

- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        
        // Initialization code
        [self _setupConstraints];
    }
    return self;
}

- (void)updateConstraints {
    
    [super updateConstraints];
    
}

- (void)_setupConstraints {
    // Add constraints for coffeeNameLabel
    [self addSubview:self.coffeeNameLabel];
    NSLayoutConstraint * cnTop = [NSLayoutConstraint constraintWithItem:self.coffeeNameLabel
                                                              attribute:NSLayoutAttributeTop
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self
                                                              attribute:NSLayoutAttributeTop
                                                             multiplier:1.0
                                                               constant:10.0];
    
    NSLayoutConstraint * cnLeading = [NSLayoutConstraint constraintWithItem:self.coffeeNameLabel
                                                                  attribute:NSLayoutAttributeLeading
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:self
                                                                  attribute:NSLayoutAttributeLeading
                                                                 multiplier:1.0
                                                                   constant:10.0];
    [self addConstraints:@[cnTop,cnLeading]];
    
    // Add constraints for dripperLabel
    [self addSubview:self.dripperLabel];
    NSLayoutConstraint * dpTop = [NSLayoutConstraint constraintWithItem:self.dripperLabel
                                                              attribute:NSLayoutAttributeTop
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self.coffeeNameLabel
                                                              attribute:NSLayoutAttributeBottom
                                                             multiplier:1.0
                                                               constant:LABEL_VERTICAL_SPACING];
    
    NSLayoutConstraint * dpLeft = [NSLayoutConstraint constraintWithItem:self.dripperLabel
                                                               attribute:NSLayoutAttributeLeft
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.coffeeNameLabel
                                                               attribute:NSLayoutAttributeLeft
                                                              multiplier:1.0
                                                                constant:0.0];
    [self addConstraints:@[dpTop,dpLeft]];
    
    // Add constraints for coffeeVolumeLabel
    [self addSubview:self.coffeeVolumeLabel];
    NSLayoutConstraint * cvTop = [NSLayoutConstraint constraintWithItem:self.coffeeVolumeLabel
                                                              attribute:NSLayoutAttributeTop
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self.dripperLabel
                                                              attribute:NSLayoutAttributeBottom
                                                             multiplier:1.0
                                                               constant:LABEL_VERTICAL_SPACING];
    
    NSLayoutConstraint * cvLeft = [NSLayoutConstraint constraintWithItem:self.coffeeVolumeLabel
                                                               attribute:NSLayoutAttributeLeft
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.coffeeNameLabel
                                                               attribute:NSLayoutAttributeLeft
                                                              multiplier:1.0
                                                                constant:0.0];
    [self addConstraints:@[cvTop,cvLeft]];
    
    // Add constraints for wcRatioLabel
    [self addSubview:self.wcRatioLabel];
    NSLayoutConstraint * wcrTop = [NSLayoutConstraint constraintWithItem:self.wcRatioLabel
                                                              attribute:NSLayoutAttributeTop
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self.coffeeVolumeLabel
                                                              attribute:NSLayoutAttributeBottom
                                                             multiplier:1.0
                                                               constant:LABEL_VERTICAL_SPACING];
    
    NSLayoutConstraint * wcrLeft = [NSLayoutConstraint constraintWithItem:self.wcRatioLabel
                                                               attribute:NSLayoutAttributeLeft
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.coffeeNameLabel
                                                               attribute:NSLayoutAttributeLeft
                                                              multiplier:1.0
                                                                constant:0.0];
    [self addConstraints:@[wcrTop,wcrLeft]];
    
    // Add constraints for waterVolumeLabel
    [self addSubview:self.waterVolumeLabel];
    NSLayoutConstraint * wvTop = [NSLayoutConstraint constraintWithItem:self.waterVolumeLabel
                                                              attribute:NSLayoutAttributeTop
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self.wcRatioLabel
                                                              attribute:NSLayoutAttributeBottom
                                                             multiplier:1.0
                                                               constant:LABEL_VERTICAL_SPACING];
    
    NSLayoutConstraint * wvLeft = [NSLayoutConstraint constraintWithItem:self.waterVolumeLabel
                                                               attribute:NSLayoutAttributeLeft
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.coffeeNameLabel
                                                               attribute:NSLayoutAttributeLeft
                                                              multiplier:1.0
                                                                constant:0.0];
    
    [self addConstraints:@[wvTop,wvLeft]];
    
    // Add constraints for waterTemperatureLabel
    [self addSubview:self.waterTemperatureLabel];
    NSLayoutConstraint * wtTop = [NSLayoutConstraint constraintWithItem:self.waterTemperatureLabel
                                                               attribute:NSLayoutAttributeTop
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.waterVolumeLabel
                                                               attribute:NSLayoutAttributeBottom
                                                              multiplier:1.0
                                                                constant:LABEL_VERTICAL_SPACING];
    
    NSLayoutConstraint * wtLeft = [NSLayoutConstraint constraintWithItem:self.waterTemperatureLabel
                                                                attribute:NSLayoutAttributeLeft
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.coffeeNameLabel
                                                                attribute:NSLayoutAttributeLeft
                                                               multiplier:1.0
                                                                 constant:0.0];
    [self addConstraints:@[wtTop,wtLeft]];
    
    // Add constraints for coffeeNameTextField
    [self addSubview:self.coffeeNameTextField];
    NSLayoutConstraint * cntCenterY = [NSLayoutConstraint constraintWithItem:self.coffeeNameTextField
                                                              attribute:NSLayoutAttributeCenterY
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self.coffeeNameLabel
                                                              attribute:NSLayoutAttributeCenterY
                                                             multiplier:1.0
                                                               constant:0.0];
    
    NSLayoutConstraint * cntRight = [NSLayoutConstraint constraintWithItem:self
                                                               attribute:NSLayoutAttributeTrailing
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.coffeeNameTextField
                                                               attribute:NSLayoutAttributeTrailing
                                                              multiplier:1.0
                                                                constant:TEXTFIELD_RIGHT_SPACING];
    
    NSLayoutConstraint * cntLeft = [NSLayoutConstraint constraintWithItem:self.coffeeNameTextField
                                                                 attribute:NSLayoutAttributeLeft
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self.coffeeNameLabel
                                                                 attribute:NSLayoutAttributeRight
                                                                multiplier:1.0
                                                                  constant:10.0];
    [self addConstraints:@[cntCenterY,cntRight,cntLeft]];

    // Add constraints for dripperTextField
    [self addSubview:self.dripperTextField];
    NSLayoutConstraint * dptCenterY = [NSLayoutConstraint constraintWithItem:self.dripperTextField
                                                                   attribute:NSLayoutAttributeCenterY
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:self.dripperLabel
                                                                   attribute:NSLayoutAttributeCenterY
                                                                  multiplier:1.0
                                                                    constant:0.0];
    
    NSLayoutConstraint * dptRight = [NSLayoutConstraint constraintWithItem:self.dripperTextField
                                                                 attribute:NSLayoutAttributeRight
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self.coffeeNameTextField
                                                                 attribute:NSLayoutAttributeRight
                                                                multiplier:1.0
                                                                  constant:0.0];
    
    NSLayoutConstraint * dptLeft = [NSLayoutConstraint constraintWithItem:self.dripperTextField
                                                                attribute:NSLayoutAttributeLeft
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self
                                                                attribute:NSLayoutAttributeCenterX
                                                               multiplier:1.0
                                                                 constant:0.0];
    [self addConstraints:@[dptCenterY,dptRight,dptLeft]];

    // Add constraints for coffeeVolumeTextField
    [self addSubview:self.coffeeVolumeTextField];
    NSLayoutConstraint * cvtCenterY = [NSLayoutConstraint constraintWithItem:self.coffeeVolumeTextField
                                                                   attribute:NSLayoutAttributeCenterY
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:self.coffeeVolumeLabel
                                                                   attribute:NSLayoutAttributeCenterY
                                                                  multiplier:1.0
                                                                    constant:0.0];
    
    NSLayoutConstraint * cvtRight = [NSLayoutConstraint constraintWithItem:self.coffeeVolumeTextField
                                                                 attribute:NSLayoutAttributeRight
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self.dripperTextField
                                                                 attribute:NSLayoutAttributeRight
                                                                multiplier:1.0
                                                                  constant:0.0];
    
    NSLayoutConstraint * cvtLeft = [NSLayoutConstraint constraintWithItem:self.coffeeVolumeTextField
                                                                attribute:NSLayoutAttributeLeft
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.dripperTextField
                                                                attribute:NSLayoutAttributeLeft
                                                               multiplier:1.0
                                                                 constant:0.0];
    [self addConstraints:@[cvtCenterY,cvtRight,cvtLeft]];
    
    
    // Add constraints for wcRatioTextField
    [self addSubview:self.wcRatioTextField];
    NSLayoutConstraint * wcrtCenterY = [NSLayoutConstraint constraintWithItem:self.wcRatioTextField
                                                                   attribute:NSLayoutAttributeCenterY
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:self.wcRatioLabel
                                                                   attribute:NSLayoutAttributeCenterY
                                                                  multiplier:1.0
                                                                    constant:0.0];
    
    NSLayoutConstraint * wcrtRight = [NSLayoutConstraint constraintWithItem:self.wcRatioTextField
                                                                 attribute:NSLayoutAttributeRight
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self.coffeeVolumeTextField
                                                                 attribute:NSLayoutAttributeRight
                                                                multiplier:1.0
                                                                  constant:0.0];
    
    NSLayoutConstraint * wcrtLeft = [NSLayoutConstraint constraintWithItem:self.wcRatioTextField
                                                                attribute:NSLayoutAttributeLeft
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.coffeeVolumeTextField
                                                                attribute:NSLayoutAttributeLeft
                                                               multiplier:1.0
                                                                 constant:0.0];
    [self addConstraints:@[wcrtCenterY,wcrtRight,wcrtLeft]];
    
    // Add constraints for waterVolumeTextField
    [self addSubview:self.waterVolumeTextField];
    NSLayoutConstraint * wvtCenterY = [NSLayoutConstraint constraintWithItem:self.waterVolumeTextField
                                                                    attribute:NSLayoutAttributeCenterY
                                                                    relatedBy:NSLayoutRelationEqual
                                                                       toItem:self.waterVolumeLabel
                                                                    attribute:NSLayoutAttributeCenterY
                                                                   multiplier:1.0
                                                                     constant:0.0];
    
    NSLayoutConstraint * wvtRight = [NSLayoutConstraint constraintWithItem:self.waterVolumeTextField
                                                                  attribute:NSLayoutAttributeRight
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:self.wcRatioTextField
                                                                  attribute:NSLayoutAttributeRight
                                                                 multiplier:1.0
                                                                   constant:0.0];
    
    NSLayoutConstraint * wvtLeft = [NSLayoutConstraint constraintWithItem:self.waterVolumeTextField
                                                                 attribute:NSLayoutAttributeLeft
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self.wcRatioTextField
                                                                 attribute:NSLayoutAttributeLeft
                                                                multiplier:1.0
                                                                  constant:0.0];
    [self addConstraints:@[wvtCenterY,wvtRight,wvtLeft]];
    
    // Add constraints for waterTemperatureTextField
    [self addSubview:self.waterTemperatureTextField];
    NSLayoutConstraint * wttCenterY = [NSLayoutConstraint constraintWithItem:self.waterTemperatureTextField
                                                                   attribute:NSLayoutAttributeCenterY
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:self.waterTemperatureLabel
                                                                   attribute:NSLayoutAttributeCenterY
                                                                  multiplier:1.0
                                                                    constant:0.0];
    
    NSLayoutConstraint * wttRight = [NSLayoutConstraint constraintWithItem:self.waterTemperatureTextField
                                                                 attribute:NSLayoutAttributeRight
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self.waterVolumeTextField
                                                                 attribute:NSLayoutAttributeRight
                                                                multiplier:1.0
                                                                  constant:0.0];
    
    
    NSLayoutConstraint * wttLeft = [NSLayoutConstraint constraintWithItem:self.waterTemperatureTextField
                                                                attribute:NSLayoutAttributeLeft
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.waterVolumeTextField
                                                                attribute:NSLayoutAttributeRight
                                                               multiplier:1.0
                                                                 constant:self.waterTemperatureLabel.frame.size.width - self.frame.size.width];
    [self addConstraints:@[wttCenterY,wttRight,wttLeft]];
    
}

/* Config UI elements */
-(UILabel *)coffeeNameLabel{
    if (!_coffeeNameLabel) {
        _coffeeNameLabel = [[UILabel alloc] init];
        [_coffeeNameLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
        [_coffeeNameLabel setText:@"Coffee Name:"];
        [_coffeeNameLabel setNumberOfLines:0];
        [_coffeeNameLabel sizeToFit];
        [_coffeeNameLabel setFont: LABEL_FONT];
    }
    return _coffeeNameLabel;
}


-(UILabel *)dripperLabel{
    if (!_dripperLabel) {
        _dripperLabel = [[UILabel alloc] init];
        [_dripperLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
        [_dripperLabel setText:@"Dripper:"];
        [_dripperLabel setNumberOfLines:0];
        [_dripperLabel sizeToFit];
        [_dripperLabel setFont: LABEL_FONT];
    }
    return _dripperLabel;
}

-(UILabel *)coffeeVolumeLabel{
    if (!_coffeeVolumeLabel) {
        _coffeeVolumeLabel = [[UILabel alloc] init];
        [_coffeeVolumeLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
        [_coffeeVolumeLabel setText:@"Coffee Volume(g):"];
        [_coffeeVolumeLabel setNumberOfLines:0];
        [_coffeeVolumeLabel sizeToFit];
        [_coffeeVolumeLabel setFont: LABEL_FONT];
    }
    return _coffeeVolumeLabel;
}


-(UILabel *)wcRatioLabel{
    if (!_wcRatioLabel) {
        _wcRatioLabel = [[UILabel alloc] init];
        [_wcRatioLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
        [_wcRatioLabel setText:@"Water/Coffee:"];
        [_wcRatioLabel setNumberOfLines:0];
        [_wcRatioLabel sizeToFit];
        [_wcRatioLabel setFont: LABEL_FONT];
    }
    return _wcRatioLabel;
}

-(UILabel *)waterVolumeLabel{
    if (!_waterVolumeLabel) {
        _waterVolumeLabel = [[UILabel alloc] init];
        [_waterVolumeLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
        [_waterVolumeLabel setText:@"Water Volume(ml):"];
        [_waterVolumeLabel setNumberOfLines:0];
        [_waterVolumeLabel sizeToFit];
        [_waterVolumeLabel setFont: LABEL_FONT];
    }
    return _waterVolumeLabel;
}

-(UILabel *)waterTemperatureLabel{
    if (!_waterTemperatureLabel) {
        _waterTemperatureLabel = [[UILabel alloc] init];
        [_waterTemperatureLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
        [_waterTemperatureLabel setText:@"Water Temperature(°C):"];
        [_waterTemperatureLabel setNumberOfLines:0];
        [_waterTemperatureLabel sizeToFit];
        [_waterTemperatureLabel setFont: LABEL_FONT];
    }
    return _waterTemperatureLabel;
}

-(UITextField *)coffeeNameTextField{
    if (!_coffeeNameTextField) {
        _coffeeNameTextField = [[UITextField alloc] init];
        [_coffeeNameTextField setTranslatesAutoresizingMaskIntoConstraints:NO];
        [_coffeeVolumeTextField setDelegate:self];
        [_coffeeNameTextField setPlaceholder:@"Coffee Name"];
        [_coffeeVolumeTextField setTextAlignment:NSTextAlignmentCenter];
        [_coffeeNameTextField setFont:TEXTFIELD_FONT];
        [_coffeeNameTextField setTextColor: TEXTFIELD_TEXT_COLOR];
    }
    return _coffeeNameTextField;
}

-(UITextField *)dripperTextField{
    if (!_dripperTextField) {
        _dripperTextField = [[UITextField alloc] init];
        [_dripperTextField setTranslatesAutoresizingMaskIntoConstraints:NO];
        [_dripperTextField setDelegate:self];
        [_dripperTextField setPlaceholder:@"V60"];
        [_dripperTextField setTextAlignment:NSTextAlignmentCenter];
        [_dripperTextField setFont:TEXTFIELD_FONT];
        [_dripperTextField setTextColor: TEXTFIELD_TEXT_COLOR];
    }
    return _dripperTextField;
}

-(UITextField *)coffeeVolumeTextField{
    if (!_coffeeVolumeTextField) {
        _coffeeVolumeTextField = [[UITextField alloc] init];
        [_coffeeVolumeTextField setTranslatesAutoresizingMaskIntoConstraints:NO];
        [_coffeeVolumeTextField setDelegate:self];
        [_coffeeVolumeTextField setPlaceholder:@"15"];
        [_coffeeVolumeTextField setTextAlignment:NSTextAlignmentCenter];
        [_coffeeVolumeTextField setFont:TEXTFIELD_FONT];
        [_coffeeVolumeTextField setTextColor: TEXTFIELD_TEXT_COLOR];
    }
    return _coffeeVolumeTextField;
}

-(UITextField *)wcRatioTextField{
    if (!_wcRatioTextField) {
        _wcRatioTextField = [[UITextField alloc] init];
        [_wcRatioTextField setTranslatesAutoresizingMaskIntoConstraints:NO];
        [_wcRatioTextField setDelegate:self];
        [_wcRatioTextField setPlaceholder:@"16.67"];
        [_wcRatioTextField setTextAlignment:NSTextAlignmentCenter];
        [_wcRatioTextField setFont:TEXTFIELD_FONT];
        [_wcRatioTextField setTextColor: TEXTFIELD_TEXT_COLOR];
    }
    return _wcRatioTextField;
}


-(UITextField *)waterVolumeTextField{
    if (!_waterVolumeTextField) {
        _waterVolumeTextField = [[UITextField alloc] init];
        [_waterVolumeTextField setTranslatesAutoresizingMaskIntoConstraints:NO];
        [_waterVolumeTextField setDelegate:self];
        [_waterVolumeTextField setPlaceholder:@"240"];
        [_waterVolumeTextField setTextAlignment:NSTextAlignmentCenter];
        [_waterVolumeTextField setFont:TEXTFIELD_FONT];
        [_waterVolumeTextField setTextColor: TEXTFIELD_TEXT_COLOR];
    }
    return _waterVolumeTextField;
}


-(UITextField *)waterTemperatureTextField{
    if (!_waterTemperatureTextField) {
        _waterTemperatureTextField = [[UITextField alloc] init];
        [_waterTemperatureTextField setTranslatesAutoresizingMaskIntoConstraints:NO];
        [_waterTemperatureTextField setDelegate:self];
        [_waterTemperatureTextField setPlaceholder:@"88"];
        [_waterTemperatureTextField setTextAlignment:NSTextAlignmentCenter];
        [_waterTemperatureTextField setFont:TEXTFIELD_FONT];
        [_waterTemperatureTextField setTextColor: TEXTFIELD_TEXT_COLOR];
    }
    return _waterTemperatureTextField;
}








//-(void)textFieldDidEndEditing:(UITextField *)textField {
////    if (textField == ) {
////        
////    }
//}

-(void)textFieldDidEndEditing:(UITextField *)textField
{
    if (textField == self.coffeeVolumeTextField || textField == self.wcRatioTextField) {
        if ([self.coffeeVolumeTextField.text length] > 0 && [self.wcRatioTextField.text length] > 0) {
            float coffeeVolume = self.coffeeVolumeTextField.text.intValue;
            float wcRatio = self.wcRatioTextField.text.intValue;
            float waterVolume = coffeeVolume * wcRatio;
            
            self.waterVolumeTextField.text = [@(waterVolume) stringValue];
        }
    }
}

@end
