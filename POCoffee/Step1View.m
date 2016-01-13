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
                                                               attribute:NSLayoutAttributeRight
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.coffeeNameTextField
                                                               attribute:NSLayoutAttributeRight
                                                              multiplier:1.0
                                                                constant:10.0];
    
    NSLayoutConstraint * cntLeft = [NSLayoutConstraint constraintWithItem:self.coffeeNameTextField
                                                                 attribute:NSLayoutAttributeLeft
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self.coffeeNameLabel
                                                                 attribute:NSLayoutAttributeRight
                                                                multiplier:1.0
                                                                  constant:10.0];
    [self addConstraints:@[cntCenterY,cntRight,cntLeft]];
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
        [_coffeeVolumeLabel setText:@"Coffee Volume:"];
        [_coffeeVolumeLabel setNumberOfLines:0];
        [_coffeeVolumeLabel sizeToFit];
        [_coffeeVolumeLabel setFont: LABEL_FONT];
    }
    return _coffeeVolumeLabel;
}

-(UILabel *)waterVolumeLabel{
    if (!_waterVolumeLabel) {
        _waterVolumeLabel = [[UILabel alloc] init];
        [_waterVolumeLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
        [_waterVolumeLabel setText:@"Water Volume:"];
        [_waterVolumeLabel setNumberOfLines:0];
        [_waterVolumeLabel sizeToFit];
        [_waterVolumeLabel setFont: LABEL_FONT];
    }
    return _waterVolumeLabel;
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

-(UILabel *)waterTemperatureLabel{
    if (!_waterTemperatureLabel) {
        _waterTemperatureLabel = [[UILabel alloc] init];
        [_waterTemperatureLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
        [_waterTemperatureLabel setText:@"Water Temperature:"];
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
        [_coffeeNameTextField setPlaceholder:@"Coffee Name"];
        [_coffeeNameTextField setFont:TEXTFIELD_FONT];
        [_coffeeNameTextField setTextColor: TEXTFIELD_TEXT_COLOR];
    }
    return _coffeeNameTextField;
}

//-(void)textFieldDidEndEditing:(UITextField *)textField {
////    if (textField == ) {
////        
////    }
//}

@end
