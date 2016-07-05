//
//  FISAddTriviaTableViewController.h
//  locationTrivia-dataStore
//
//  Created by Flatiron School on 7/1/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FISAddTriviaTableViewController : UITableViewController
@property (weak, nonatomic) IBOutlet UITextField *addTriviaTextLabel;
@property (weak, nonatomic) IBOutlet UIButton *saveButtonLabel;
@property (weak, nonatomic) IBOutlet UIButton *cancelButtonLabel;
- (IBAction)saveButtonTapped:(id)sender;
- (IBAction)cancelButtonTapped:(id)sender;

@end
