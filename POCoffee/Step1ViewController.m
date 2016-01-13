//
//  ViewController.m
//  POCoffee
//
//  Created by GaoYuan on 15/12/30.
//  Copyright © 2015年 Yuan Gao. All rights reserved.
//

#import "Step1ViewController.h"
#import "SWRevealViewController.h"
#import "FavoritesTableViewController.h"

@interface Step1ViewController () <SWRevealViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UIBarButtonItem *favoriteButton;

@end

@implementation Step1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self _setupInterfaces];
}



#pragma mark - Delegates

/* SWRevealViewControllerDelegate */
-(void)revealController:(SWRevealViewController *)revealController didMoveToPosition:(FrontViewPosition)position {

    if (position == FrontViewPositionLeft) {
        
        if ([revealController.rearViewController isKindOfClass: [FavoritesTableViewController class]]) {
            
            FavoritesTableViewController *tvc = (FavoritesTableViewController *) revealController.rearViewController;
            self.favoriteDetailData = [[FavoriteDetailData alloc] init];
            self.favoriteDetailData = tvc.favoriteDetailData;
            
            NSString *str = tvc.favoriteDetailData.coffeeName;
            [_step1View.coffeeNameTextField setText:str];
        }
    }
}




#pragma mark - Local methods

/* Interface initiallization */
- (void)_setupInterfaces {
    
    self.revealViewController.delegate = self;
    
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        [self.favoriteButton setTarget: self.revealViewController];
        [self.favoriteButton setAction: @selector( revealToggle: )];
        [self.navigationController.navigationBar addGestureRecognizer: self.revealViewController.panGestureRecognizer];
    }
    
    // Obtain the view rect of the status bar frame in either portrait or landscape
    CGRect statusBarFrame = [[UIApplication sharedApplication] statusBarFrame];
    
    // Add Status Bar and Navigation Bar heights together
    CGFloat height = self.navigationController.navigationBar.frame.size.height + statusBarFrame.size.height;
    
    CGRect step1ViweFrame = CGRectMake(0, height, self.view.frame.size.width, self.view.frame.size.height - height);
    
    _step1View = [[Step1View alloc] initWithFrame:step1ViweFrame];
    [self.view addSubview:_step1View];
    
}

@end
