//
//  FavoritesTableViewController.m
//  POCoffee
//
//  Created by GaoYuan on 15/12/30.
//  Copyright © 2015年 Yuan Gao. All rights reserved.
//

#import "FavoritesTableViewController.h"
#import "Favorites.h"
#import "AppDelegate.h"
#import "SWRevealViewController.h"
#import "Step1ViewController.h"
#import "FavoriteDetailData.h"

@interface FavoritesTableViewController ()

@property (nonatomic, strong) NSMutableArray *favoritesData;
- (void) P_fetchFavoritesData;
@end

@implementation FavoritesTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self)
    {
        // Custom initialization
        self.clearsSelectionOnViewWillAppear = YES;
    }
    return self;
}



#pragma mark - View lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];

    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self P_fetchFavoritesData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//    return self.favoritesData.count;
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FavoriteCell" forIndexPath:indexPath];
    
    // Configure the cell...
//    cell = [self P_configureCell:cell cellForRowAtIndexPath:indexPath];
    cell.textLabel.text = @"11111111";
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Grab a handle to the reveal controller, as if you'd do with a navigtion controller via self.navigationController.
//    NSManagedObject *favoriteDetailManagedObject = [self.favoritesData[indexPath.row] valueForKey:@"favoriteDetail"];
    self.favoriteDetailData = [[FavoriteDetailData alloc] init];
    self.favoriteDetailData.coffeeName = @"333";
    
}


#pragma mark - Private Methods

- (void) P_fetchFavoritesData
{
    [self.favoritesData addObjectsFromArray: [self P_getNewFavorites]];
    [self.tableView reloadData];
}


- (NSArray *) P_getNewFavorites
{
    AppDelegate *sharedApplicationDelegate = [[UIApplication sharedApplication] delegate];
    NSArray * newFavorites = [Favorites fetchAllFavoritesInManagedObjectContext:sharedApplicationDelegate.managedObjectContext];
    return newFavorites;
}

- (UITableViewCell *) P_configureCell:(UITableViewCell *)cell cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    cell.textLabel.text = [self.favoritesData[indexPath.row] valueForKey:@"favoriteDescription"];
    return cell;
}



#pragma mark - Getter and Setter methods

- (NSMutableArray *) favoritesData
{
    if (!_favoritesData) {
        _favoritesData = [NSMutableArray new];
    }
    return _favoritesData;
}



/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

//- (void) prepareForSegue: (UIStoryboardSegue *) segue sender: (id) sender
//{
//    // configure the destination view controller:
//    if ( [sender isKindOfClass:[UITableViewCell class]] )
//    {
//        UINavigationController *navController = segue.destinationViewController;
//        Step1ViewController* cvc = [navController childViewControllers].firstObject;
//        if ( [cvc isKindOfClass:[Step1ViewController class]] )
//        {
//            [cvc.view setBackgroundColor:[UIColor grayColor]];
//        }
//    }
//}


@end
