//
//  FISTriviaTableViewController.h
//  locationTrivia-dataStore
//
//  Created by Flatiron School on 7/1/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FISLocation.h"

@interface FISTriviaTableViewController : UITableViewController
@property (weak, nonatomic) IBOutlet UIBarButtonItem *plusLabel;
@property (nonatomic) NSMutableArray *arr;
@property (nonatomic) FISLocation *location;
- (IBAction)plusTapped:(id)sender;

//- (IBAction)addTriviaTapped:(id)sender;

@end
