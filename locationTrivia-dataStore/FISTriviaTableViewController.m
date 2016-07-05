//
//  FISTriviaTableViewController.m
//  locationTrivia-dataStore
//
//  Created by Flatiron School on 7/1/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISTriviaTableViewController.h"
#import "FISAddTriviaViewController.h"

@interface FISTriviaTableViewController ()
//@property (weak, nonatomic) IBOutlet UIBarButtonItem *addTriviaLabel;

@end

@implementation FISTriviaTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.accessibilityLabel = @"Trivia Table";
    self.tableView.accessibilityIdentifier = @"Trivia Table";
    self.arr = self.location.trivia;
    
    self.plusLabel.accessibilityIdentifier = @"Add Trivia Button";
    self.plusLabel.accessibilityLabel = @"Add Trivia Button";
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

-(void)viewWillAppear:(BOOL)animated{
    [self.tableView reloadData];
    animated = YES;
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
    return [self.arr count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"secondScreen" forIndexPath:indexPath];
    
    FISTrivium *tri = self.arr[indexPath.row];
    cell.textLabel.text = [NSString stringWithFormat:@"%@", tri.content];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%lu", tri.likes];
    
    
    return cell;
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


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    FISAddTriviaViewController *nextScreen = (FISAddTriviaViewController *)segue.destinationViewController;
    nextScreen.yo = self.location;
    
   // FISTriviaTableViewController *triviaDestination = (FISTriviaTableViewController *)segue.destinationViewController;
   // NSIndexPath *selectedIndexPath = [self.tableView indexPathForSelectedRow];
   // FISLocation *locationInstance = self.store.locations[selectedIndexPath.row];
   // triviaDestination.location = locationInstance;
    
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}



- (IBAction)plusTapped:(id)sender {
    
}
@end
