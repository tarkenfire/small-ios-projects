//
//  SimulationResultsViewController.h
//  testApp
//
//  Created by マイケル マンキュソ on 4/18/13.
//  Copyright (c) 2013 Hinode Softworks. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VehicleFactory.h"

@interface SimulationResultsViewController : UIViewController
{
    IBOutlet UILabel* results;
}

@property (nonatomic)Vehicle* resultVehicle;
-(IBAction)onCloseClick:(id)sender;
-(NSString*)createHeadingString:(int)headingEnum;

@end
