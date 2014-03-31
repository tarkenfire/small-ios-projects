//
//  SimulationResultsViewController.m
//  testApp
//
//  Created by Michael Mancuso on 4/18/13.
//  Copyright (c) 2013 Hinode Softworks. All rights reserved.
//

#import "SimulationResultsViewController.h"

@interface SimulationResultsViewController ()

@end

@implementation SimulationResultsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    //this is neither slick nor sexy, but it gets the job done.
    NSMutableString* resultText = [[NSMutableString alloc] init];
    
    [resultText appendFormat:@"Final X: %d\nFinal Y: %d", _resultVehicle.curX, _resultVehicle.curY];
    
    //plane has Z coord, ascent angle
    if ([_resultVehicle isKindOfClass:[Airplane class]])
    {
        Airplane* holder = (Airplane*)_resultVehicle;
        [resultText appendFormat:@"\nFinal Z: %d\nLast Ascent Rate: %d", holder.curZ, holder.curAscentRate];
    }
    
    [resultText appendFormat:@"\nFinal Speed: %d \nFinal Heading: %@", _resultVehicle.curSpeed, [self createHeadingString:_resultVehicle.horizontalHeading]];
    
    //car has tire grip.
    if ([_resultVehicle isKindOfClass:[Car class]])
    {
        Car* holder = (Car*)_resultVehicle;
        [resultText appendFormat:@"\nTire Grip: %f", holder.tireGrip];
    }

    //rickshaw has fuel
    if ([_resultVehicle isKindOfClass:[JetPoweredRickshaw class]])
    {
        JetPoweredRickshaw* holder = (JetPoweredRickshaw*)_resultVehicle;
        [resultText appendFormat:@"\nFuel Remaining: %d", holder.fuelRemaining];
    }
    
    results.text = resultText;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onCloseClick:(id)sender
{
    [self dismissViewControllerAnimated:true completion:nil];
}

-(NSString*)createHeadingString:(int)headingEnum
{
    switch (headingEnum)
    {
        case NORTH:
            return @"NORTH";
        case SOUTH:
            return @"SOUTH";
        case EAST:
            return @"EAST";
        case WEST:
            return @"WEST";
    }
    return @"N/A";
}

@end
