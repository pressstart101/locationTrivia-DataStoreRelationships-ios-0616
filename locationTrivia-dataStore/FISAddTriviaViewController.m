//
//  FISAddTriviaViewController.m
//  locationTrivia-dataStore
//
//  Created by Flatiron School on 7/1/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISAddTriviaViewController.h"
#import "FISTrivium.h"
#import "FISLocationsDataStore.h"
#import "FISTriviaTableViewController.h"

@interface FISAddTriviaViewController ()

@end

@implementation FISAddTriviaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.textLabel.accessibilityIdentifier = @"Trivium Text Field";
    self.textLabel.accessibilityLabel = @"Trivium Text Field";
    
    
    self.saveButtonLabel.accessibilityIdentifier = @"Save Button";
    self.saveButtonLabel.accessibilityLabel = @"Save Button";
    
    self.cancelButtonLabel.accessibilityIdentifier = @"Cancel Button";
    self.cancelButtonLabel.accessibilityLabel = @"Cancel Button";

    // Do any additional setup after loading the view.
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)saveButtonAction:(id)sender {
  
       // yo = [[FISLocation alloc]init];
    
    
FISTrivium *newInstance = [[FISTrivium alloc]init];

newInstance.content = self.textLabel.text;
newInstance.likes = 0;
[self.yo.trivia addObject:newInstance];
[self dismissViewControllerAnimated:YES completion:nil];
  

    
}
- (IBAction)cancellButtonAction:(id)sender {
        [self dismissViewControllerAnimated:YES completion:nil];
   // [self.navigationController popToRootViewControllerAnimated:YES];
}
@end
