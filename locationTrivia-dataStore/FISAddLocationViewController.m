//
//  FISAddLocationViewController.m
//  locationTrivia-dataStore
//
//  Created by Flatiron School on 7/1/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISAddLocationViewController.h"
#import "FISLocation.h"
#import "FISLocationsDataStore.h"
#import "FISLocationsTableViewController.h"

@interface FISAddLocationViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextLabel;
@property (weak, nonatomic) IBOutlet UITextField *latitudeTextLabel;
@property (weak, nonatomic) IBOutlet UITextField *longitudeTextLabel;
@property (weak, nonatomic) IBOutlet UIButton *saveButtonLabel;
@property (weak, nonatomic) IBOutlet UIButton *cancelButtonLabel;

@end

@implementation FISAddLocationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.nameTextLabel.accessibilityIdentifier = @"nameField";
    self.nameTextLabel.accessibilityLabel = @"nameField";
    
    self.latitudeTextLabel.accessibilityIdentifier = @"latitudeField";
    self.latitudeTextLabel.accessibilityLabel = @"latitudeField";
    
    self.longitudeTextLabel.accessibilityIdentifier = @"longitudeField";
    self.longitudeTextLabel.accessibilityLabel = @"longitudeField";
    
    self.saveButtonLabel.accessibilityIdentifier = @"saveButton";
    self.saveButtonLabel.accessibilityLabel = @"saveButton";
    
    self.cancelButtonLabel.accessibilityIdentifier = @"cancelButton";
    self.cancelButtonLabel.accessibilityLabel = @"cancelButton";
    
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

- (IBAction)CancelButtonTapped:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    //[self.navigationcontroller popcontrblleranimated:yes];
}

- (IBAction)SaveButtonTapped:(id)sender {
    FISLocation *newInstance = [[FISLocation alloc]init];
    newInstance.name = self.nameTextLabel.text;
    newInstance.latitude = [self.latitudeTextLabel.text floatValue];
    newInstance.longitude = [self.longitudeTextLabel.text floatValue];
    FISLocationsDataStore *newdata = [FISLocationsDataStore sharedLocationsDataStore];
    [newdata.locations addObject:newInstance];
      [self dismissViewControllerAnimated:YES completion:nil];
    
}








@end
