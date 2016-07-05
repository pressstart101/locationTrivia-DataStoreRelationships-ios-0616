//
//  FISAddTriviaViewController.h
//  locationTrivia-dataStore
//
//  Created by Flatiron School on 7/1/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FISLocation.h"
@interface FISAddTriviaViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textLabel;
@property (weak, nonatomic) IBOutlet UIButton *saveButtonLabel;
@property (weak, nonatomic) IBOutlet UIButton *cancelButtonLabel;
@property (nonatomic) FISLocation *yo;
- (IBAction)saveButtonAction:(id)sender;
- (IBAction)cancellButtonAction:(id)sender;

@end
