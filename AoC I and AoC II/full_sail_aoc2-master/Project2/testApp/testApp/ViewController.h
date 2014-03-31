//
//  ViewController.h
//  testApp
//
//  Created by Michael Mancuso on 4/17/13.
//  Copyright (c) 2013 Hinode Softworks. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VehicleFactory.h"
#import "SimulationResultsViewController.h"

@interface ViewController : UIViewController
{
    IBOutlet UIButton* carButton;
    IBOutlet UIButton* planeButton;
    IBOutlet UIButton* rickshawButton;
    IBOutlet UITextField* textField;
    
    int numberOfTrips;
    vehicleTypes selectedVehicleType;
    VehicleFactory* factory;
}

-(IBAction)onClick:(id)sender;
-(IBAction)onChange:(id)sender;
-(IBAction)onColorSelectChange:(id)sender;
-(void)resetButtons;
-(void)runSimulation:(Vehicle*)vehicle numOfTrips:(int)numOfTrips;

@end
