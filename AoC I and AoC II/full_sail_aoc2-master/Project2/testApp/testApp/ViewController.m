//
//  ViewController.m
//  testApp
//
//  Created by Michael Mancuso on 4/17/13.
//  Copyright (c) 2013 Hinode Softworks. All rights reserved.
//

#import "ViewController.h"
#import "CreditsViewController.h"
#import "VehicleFactory.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    factory = [VehicleFactory getInstance];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onClick:(id)sender
{
    UIButton* holder = (UIButton*)sender;
    
    switch(holder.tag)
    {
            
        //vehicle buttons
        case 0:
            [self resetButtons];
            carButton.enabled = false;
            selectedVehicleType = CAR;
            break;
        case 1:
            [self resetButtons];
            planeButton.enabled = false;
            selectedVehicleType = AIRPLANE;
            break;
        case 2:
            [self resetButtons];
            rickshawButton.enabled = false;
            selectedVehicleType = JET_POWERED_RICKSHAW;
            break;
            
        case 3: //run button
            switch(selectedVehicleType)
            {
                case CAR:
                {
                    Car* holder = (Car*)[factory createVehicle:CAR];
                    [self runSimulation:holder numOfTrips:numberOfTrips];
                }
                break;
                case AIRPLANE:
                {
                    Airplane *holder = (Airplane*)[factory createVehicle:AIRPLANE];
                    [self runSimulation:holder numOfTrips:numberOfTrips];
                }
                break;
                case JET_POWERED_RICKSHAW:
                {
                    JetPoweredRickshaw *holder = (JetPoweredRickshaw*) [factory createVehicle:JET_POWERED_RICKSHAW];
                    [self runSimulation:holder numOfTrips:numberOfTrips];
                }
                break;
                
                default: //no buttons pressed at all -- do nothing.
                break;
            }
            break;
        
        case 4: //info button
            {
                CreditsViewController *controller = [[CreditsViewController alloc] initWithNibName:@"CreditsView" bundle:nil];
                [self presentViewController:controller animated:true completion:nil];
            }
            break;
            
        default:
            return;
    }
}

-(IBAction)onChange:(id)sender
{
    UIStepper *holder = sender;
    int value = holder.value;
    
    NSString* formatString = value > 1 ? [NSString stringWithFormat:@"%d trips", value] : [NSString stringWithFormat:@"%d trip", value];
    textField.text = formatString;
    
    numberOfTrips = (int)holder.value;
    
}

-(IBAction)onColorSelectChange:(id)sender
{
    UISegmentedControl* holder = (UISegmentedControl*)sender;
    int colorToChange = holder.selectedSegmentIndex;
    
    switch (colorToChange) {
        case 0:
            self.view.backgroundColor = [UIColor blackColor];
            holder.tintColor = [UIColor grayColor];
            break;
        case 1:
            self.view.backgroundColor = [UIColor purpleColor];
            holder.tintColor = [UIColor purpleColor];
            break;
        case 2:
            self.view.backgroundColor = [UIColor blueColor];
            holder.tintColor = [UIColor blueColor];

            break;
        case 3:
            self.view.backgroundColor = [UIColor redColor];
            holder.tintColor = [UIColor redColor];
            break;
            
        default:
            break;
    }
}

-(void)resetButtons
{
    carButton.enabled = true;
    planeButton.enabled = true;
    rickshawButton.enabled = true;
}

-(void)runSimulation:(Vehicle*)vehicle numOfTrips:(int)numOfTrips
{
    if ([vehicle isKindOfClass:[Car class]])
    {
        Car *holder = (Car*)vehicle;
        for (int i = 0; i < numberOfTrips ; i++)
        {
            [holder move:arc4random_uniform(400)];
        }
        [self displayResults:holder];
    }
    else if ([vehicle isKindOfClass:[Airplane class]])
    {
        Airplane *holder = (Airplane*)vehicle;
        for (int i = 0; i < numberOfTrips ; i++)
        {
            [holder move:arc4random_uniform(400)];
        }
        [self displayResults:holder];
    }
    else //is rickshaw (not error safe)
    {
        JetPoweredRickshaw *holder = (JetPoweredRickshaw*)vehicle;
        for (int i = 0; i < numberOfTrips ; i++)
        {
            [holder move:arc4random_uniform(400)];
        }
        [self displayResults:holder];
    }
}

-(void)displayResults:(Vehicle*)_resultVehicle
{
    SimulationResultsViewController* controller = [[SimulationResultsViewController alloc] initWithNibName:@"SimulationResultsView" bundle:nil];
    controller.resultVehicle  =_resultVehicle;
    
    [self presentViewController:controller animated:true completion:nil];
}

@end
