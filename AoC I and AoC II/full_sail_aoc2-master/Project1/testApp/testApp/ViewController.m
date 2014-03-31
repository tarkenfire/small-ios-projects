//
//  ViewController.m
//  testApp
//
//  Created by Michael Mancuso on 4/9/13.
//  Copyright (c) 2013 Hinode Softworks. All rights reserved.
//

#import "ViewController.h"
#import "VehicleFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

-(void)viewWillAppear:(BOOL)animated
{
    self.view.backgroundColor = [UIColor whiteColor];
    //non dynamic sizing constants
    const double screenWidth = [[UIScreen mainScreen] bounds].size.width - 10;
    
    const double oneEighthScreenWidth = screenWidth / 8.0f;
    const double twoEighthScreenWidth = oneEighthScreenWidth * 2.0f;
    const double threeEighthScreenWidth = oneEighthScreenWidth * 3.0f;
    const double fourEighthScreenWidth = oneEighthScreenWidth * 4.0f;
    const double fiveEighthScreenWidth = oneEighthScreenWidth * 5.0f;
    const double sixEighthScreenWidth = oneEighthScreenWidth * 6.0f;
    const double padding = 5.0f;
    
    //car section
    carMainLabel = [[UILabel alloc]initWithFrame:CGRectMake(padding, 10.0f, screenWidth, 30.0f)];
    carManuLabel = [[UILabel alloc]initWithFrame:CGRectMake(padding, 50.0f, fourEighthScreenWidth, 20.0f)];
    carManuData = [[UILabel alloc]initWithFrame:CGRectMake(fourEighthScreenWidth, 50.0f, fourEighthScreenWidth, 20.0f)];
    carModelLabel = [[UILabel alloc]initWithFrame:CGRectMake(padding, 70.0f, twoEighthScreenWidth, 20.0f)];
    carModelData = [[UILabel alloc]initWithFrame:CGRectMake(twoEighthScreenWidth, 70.0f, sixEighthScreenWidth, 20.0f)];
    carXLabel = [[UILabel alloc]initWithFrame:CGRectMake(padding, 90.0f, twoEighthScreenWidth, 20.0f)];
    carXData = [[UILabel alloc]initWithFrame:CGRectMake(twoEighthScreenWidth, 90.0f, twoEighthScreenWidth, 20.0f)];
    carYLabel = [[UILabel alloc]initWithFrame:CGRectMake(fourEighthScreenWidth, 90.0f, twoEighthScreenWidth, 20.0f)];
    carYData = [[UILabel alloc]initWithFrame:CGRectMake(sixEighthScreenWidth, 90.0f, twoEighthScreenWidth, 20.0f)];
    carHeadingLabel = [[UILabel alloc]initWithFrame:CGRectMake(padding, 110.0f, twoEighthScreenWidth, 20.0f)];
    carHeadingData = [[UILabel alloc]initWithFrame:CGRectMake(twoEighthScreenWidth, 110.0f, twoEighthScreenWidth, 20.0f)];
    carSpeedLabel = [[UILabel alloc]initWithFrame:CGRectMake(fourEighthScreenWidth, 110.0f, twoEighthScreenWidth, 20.0f)];
    carSpeedData = [[UILabel alloc]initWithFrame:CGRectMake(sixEighthScreenWidth, 110.0f, twoEighthScreenWidth, 20.0f)];
    carTireGripLabel = [[UILabel alloc]initWithFrame:CGRectMake(padding, 130.0f, fourEighthScreenWidth, 20.0f)];
    carTireGripData = [[UILabel alloc]initWithFrame:CGRectMake(fourEighthScreenWidth, 130.0f, fourEighthScreenWidth, 20.0f)];
    
    //plane section
    planeMainLabel = [[UILabel alloc]initWithFrame:CGRectMake(padding, 150.0f, screenWidth, 30.0f)];
    planeManuLabel = [[UILabel alloc]initWithFrame:CGRectMake(padding, 180.0f, fourEighthScreenWidth, 20.0f)];
    planeManuData = [[UILabel alloc]initWithFrame:CGRectMake(fourEighthScreenWidth, 180.0f, fourEighthScreenWidth, 20.0f)];
    planeModelLabel = [[UILabel alloc]initWithFrame:CGRectMake(padding, 200.0f, twoEighthScreenWidth, 20.0f)];
    planeModelData = [[UILabel alloc]initWithFrame:CGRectMake(twoEighthScreenWidth, 200.0f, sixEighthScreenWidth, 20.0f)];
    planeXLabel = [[UILabel alloc]initWithFrame:CGRectMake(padding, 220.0f, oneEighthScreenWidth, 20.0f)];
    planeXData = [[UILabel alloc]initWithFrame:CGRectMake(oneEighthScreenWidth, 220.0f, oneEighthScreenWidth, 20.0f)];
    planeYLabel = [[UILabel alloc]initWithFrame:CGRectMake(threeEighthScreenWidth, 220.0f, oneEighthScreenWidth, 20.0f)];
    planeYData = [[UILabel alloc]initWithFrame:CGRectMake(fourEighthScreenWidth, 220.0f, oneEighthScreenWidth, 20.0f)];
    planeZLabel = [[UILabel alloc]initWithFrame:CGRectMake(fiveEighthScreenWidth, 220.0f, oneEighthScreenWidth, 20.0f)];
    planeZData = [[UILabel alloc]initWithFrame:CGRectMake(sixEighthScreenWidth, 220.0f, oneEighthScreenWidth, 20.0f)];
    planeHeadingLabel = [[UILabel alloc]initWithFrame:CGRectMake(padding, 240.0f, twoEighthScreenWidth, 20.0f)];
    planeHeadingData = [[UILabel alloc]initWithFrame:CGRectMake(twoEighthScreenWidth, 240.0f, twoEighthScreenWidth, 20.0f)];
    planeSpeedLabel = [[UILabel alloc]initWithFrame:CGRectMake(fourEighthScreenWidth, 240.0f, twoEighthScreenWidth, 20.0f)];
    planeSpeedData = [[UILabel alloc]initWithFrame:CGRectMake(sixEighthScreenWidth, 240.0f, twoEighthScreenWidth, 20.0f)];
    planeAscentLabel = [[UILabel alloc]initWithFrame:CGRectMake(padding, 260.0f, fourEighthScreenWidth, 20.0f)];
    planeAscentData = [[UILabel alloc]initWithFrame:CGRectMake(fourEighthScreenWidth, 260.0f, fourEighthScreenWidth, 20.0f)];

    //rickshaw section
    rickshawMainLabel = [[UILabel alloc]initWithFrame:CGRectMake(padding, 280.0f, screenWidth, 30.0f)];
    rickshawManuLabel = [[UILabel alloc]initWithFrame:CGRectMake(padding, 310.0f, fourEighthScreenWidth, 20.0f)];
    rickshawManuData = [[UILabel alloc]initWithFrame:CGRectMake(fourEighthScreenWidth, 310.0f, fourEighthScreenWidth, 20.0f)];
    rickshawModelLabel = [[UILabel alloc]initWithFrame:CGRectMake(padding, 330.0f, twoEighthScreenWidth, 20.0f)];
    rickshawModelData = [[UILabel alloc]initWithFrame:CGRectMake(twoEighthScreenWidth, 330.0f, sixEighthScreenWidth, 20.0f)];
    rickshawXLabel = [[UILabel alloc]initWithFrame:CGRectMake(padding, 350.0f, twoEighthScreenWidth, 20.0f)];
    rickshawXData = [[UILabel alloc]initWithFrame:CGRectMake(twoEighthScreenWidth, 350.0f, twoEighthScreenWidth, 20.0f)];
    rickshawYLabel = [[UILabel alloc]initWithFrame:CGRectMake(fourEighthScreenWidth, 350.0f, twoEighthScreenWidth, 20.0f)];
    rickshawYData = [[UILabel alloc]initWithFrame:CGRectMake(sixEighthScreenWidth, 350.0f, twoEighthScreenWidth, 20.0f)];
    rickshawHeadingLabel = [[UILabel alloc]initWithFrame:CGRectMake(padding, 370.0f, twoEighthScreenWidth, 20.0f)];
    rickshawHeadingData = [[UILabel alloc]initWithFrame:CGRectMake(twoEighthScreenWidth, 370.0f, twoEighthScreenWidth, 20.0f)];
    rickshawSpeedLabel = [[UILabel alloc]initWithFrame:CGRectMake(fourEighthScreenWidth, 370.0f, twoEighthScreenWidth, 20.0f)];
    rickshawSpeedData = [[UILabel alloc]initWithFrame:CGRectMake(sixEighthScreenWidth, 370.0f, twoEighthScreenWidth, 20.0f)];
    rickshawFuelLabel = [[UILabel alloc]initWithFrame:CGRectMake(padding, 390.0f, fourEighthScreenWidth, 20.0f)];
    rickshawFuelData = [[UILabel alloc]initWithFrame:CGRectMake(fourEighthScreenWidth, 390.0f, fourEighthScreenWidth, 20.0f)];
    
    
    UIView* ctx =self.view;
    
    [ctx addSubview:carMainLabel];
    [ctx addSubview:carManuLabel];
    [ctx addSubview:carManuData];
    [ctx addSubview:carModelLabel];
    [ctx addSubview:carModelData];
    [ctx addSubview:carXLabel];
    [ctx addSubview:carXData];
    [ctx addSubview:carYLabel];
    [ctx addSubview:carYData];
    [ctx addSubview:carHeadingLabel];
    [ctx addSubview:carHeadingData];
    [ctx addSubview:carSpeedLabel];
    [ctx addSubview:carSpeedData];
    [ctx addSubview:carTireGripLabel];
    [ctx addSubview:carTireGripData];
    
    [ctx addSubview:planeMainLabel];
    [ctx addSubview:planeManuLabel];
    [ctx addSubview:planeManuData];
    [ctx addSubview:planeModelLabel];
    [ctx addSubview:planeModelData];
    [ctx addSubview:planeXLabel];
    [ctx addSubview:planeXData];
    [ctx addSubview:planeYLabel];
    [ctx addSubview:planeYData];
    [ctx addSubview:planeZLabel];
    [ctx addSubview:planeZData];
    [ctx addSubview:planeHeadingLabel];
    [ctx addSubview:planeHeadingData];
    [ctx addSubview:planeSpeedLabel];
    [ctx addSubview:planeSpeedData];
    [ctx addSubview:planeAscentLabel];
    [ctx addSubview:planeAscentData];
    
    [ctx addSubview:rickshawMainLabel];
    [ctx addSubview:rickshawManuLabel];
    [ctx addSubview:rickshawManuData];
    [ctx addSubview:rickshawModelLabel];
    [ctx addSubview:rickshawModelData];
    [ctx addSubview:rickshawXLabel];
    [ctx addSubview:rickshawXData];
    [ctx addSubview:rickshawYLabel];
    [ctx addSubview:rickshawYData];
    [ctx addSubview:rickshawHeadingLabel];
    [ctx addSubview:rickshawHeadingData];
    [ctx addSubview:rickshawSpeedLabel];
    [ctx addSubview:rickshawSpeedData];
    [ctx addSubview:rickshawFuelLabel];
    [ctx addSubview:rickshawFuelData];
}


-(void)viewDidAppear:(BOOL)animated
{
    //label setup
    [self setLabelAttributes:carMainLabel text:@"Car" alignment:NSTextAlignmentCenter size:21.0f];
    [self setLabelAttributes:carManuLabel text:@"Manufacturer: " alignment:NSTextAlignmentLeft size:18.0f];
    [self setLabelAttributes:carManuData text:@"" alignment:NSTextAlignmentLeft size:18.0f];
    [self setLabelAttributes:carModelLabel text:@"Model: " alignment:NSTextAlignmentLeft size:18.0f];
    [self setLabelAttributes:carModelData text:@"" alignment:NSTextAlignmentLeft size:18.0f];
    [self setLabelAttributes:carXLabel text:@"X: " alignment:NSTextAlignmentLeft size:18.0f];
    [self setLabelAttributes:carXData text:@"" alignment:NSTextAlignmentLeft size:18.0f];
    [self setLabelAttributes:carYLabel text:@"Y: " alignment:NSTextAlignmentLeft size:18.0f];
    [self setLabelAttributes:carYData text:@"" alignment:NSTextAlignmentLeft size:18.0f];
    [self setLabelAttributes:carHeadingLabel text:@"Heading: " alignment:NSTextAlignmentLeft size:18.0f];
    [self setLabelAttributes:carHeadingData text:@"" alignment:NSTextAlignmentLeft size:18.0f];
    [self setLabelAttributes:carSpeedLabel text:@"Speed: " alignment:NSTextAlignmentLeft size:18.0f];
    [self setLabelAttributes:carSpeedData text:@"" alignment:NSTextAlignmentLeft size:18.0f];
    [self setLabelAttributes:carTireGripLabel text:@"Tire Grip: " alignment:NSTextAlignmentLeft size:18.0f];
    [self setLabelAttributes:carTireGripData text:@"" alignment:NSTextAlignmentLeft size:18.0f];
    
    [self setLabelAttributes:planeMainLabel text:@"Plane" alignment:NSTextAlignmentCenter size:21.0f];
    [self setLabelAttributes:planeManuLabel text:@"Manufacturer :" alignment:NSTextAlignmentLeft size:18.0f];
    [self setLabelAttributes:planeManuData text:@"" alignment:NSTextAlignmentLeft size:18.0f];
    [self setLabelAttributes:planeModelLabel text:@"Model: " alignment:NSTextAlignmentLeft size:18.0f];
    [self setLabelAttributes:planeModelData text:@"" alignment:NSTextAlignmentLeft size:18.0f];
    [self setLabelAttributes:planeXLabel text:@"X: " alignment:NSTextAlignmentLeft size:18.0f];
    [self setLabelAttributes:planeXData text:@"" alignment:NSTextAlignmentLeft size:18.0f];
    [self setLabelAttributes:planeYLabel text:@"Y: " alignment:NSTextAlignmentLeft size:18.0f];
    [self setLabelAttributes:planeYData text:@"" alignment:NSTextAlignmentLeft size:18.0f];
    [self setLabelAttributes:planeZLabel text:@"Z: " alignment:NSTextAlignmentLeft size:18.0f];
    [self setLabelAttributes:planeZData text:@"" alignment:NSTextAlignmentLeft size:18.0f];
    [self setLabelAttributes:planeHeadingLabel text:@"Heading: " alignment:NSTextAlignmentLeft size:18.0f];
    [self setLabelAttributes:planeHeadingData text:@"" alignment:NSTextAlignmentLeft size:18.0f];
    [self setLabelAttributes:planeSpeedLabel text:@"Speed: " alignment:NSTextAlignmentLeft size:18.0f];
    [self setLabelAttributes:planeHeadingData text:@"" alignment:NSTextAlignmentLeft size:18.0f];
    [self setLabelAttributes:planeAscentLabel text:@"Ascent Rate: " alignment:NSTextAlignmentLeft size:18.0f];
    [self setLabelAttributes:planeAscentData text:@"" alignment:NSTextAlignmentLeft size:18.0f];

    [self setLabelAttributes:rickshawMainLabel text:@"Jet Powered Rickshaw" alignment:NSTextAlignmentCenter size:21.0f];
    [self setLabelAttributes:rickshawManuLabel text:@"Manufacturer" alignment:NSTextAlignmentLeft size:18.0f];
    [self setLabelAttributes:rickshawManuData text:@"" alignment:NSTextAlignmentLeft size:18.0f];
    [self setLabelAttributes:rickshawModelLabel text:@"Model: " alignment:NSTextAlignmentLeft size:18.0f];
    [self setLabelAttributes:rickshawModelData text:@"" alignment:NSTextAlignmentLeft size:18.0f];
    [self setLabelAttributes:rickshawXLabel text:@"X: " alignment:NSTextAlignmentLeft size:18.0f];
    [self setLabelAttributes:rickshawXData text:@"" alignment:NSTextAlignmentLeft size:18.0f];
    [self setLabelAttributes:rickshawYLabel text:@"Y: " alignment:NSTextAlignmentLeft size:18.0f];
    [self setLabelAttributes:rickshawYData text:@"" alignment:NSTextAlignmentLeft size:18.0f];
    [self setLabelAttributes:rickshawHeadingLabel text:@"Heading: " alignment:NSTextAlignmentLeft size:18.0f];
    [self setLabelAttributes:rickshawHeadingData text:@"" alignment:NSTextAlignmentLeft size:18.0f];
    [self setLabelAttributes:rickshawSpeedLabel text:@"Speed: " alignment:NSTextAlignmentLeft size:18.0f];
    [self setLabelAttributes:rickshawSpeedData text:@"" alignment:NSTextAlignmentLeft size:18.0f];
    [self setLabelAttributes:rickshawFuelLabel text:@"Fuel Remaining: " alignment:NSTextAlignmentLeft size:18.0f];
    [self setLabelAttributes:rickshawFuelData text:@"" alignment:NSTextAlignmentLeft size:18.0f];
    
    
    Car* car=(Car*)[VehicleFactory createVehicle:CAR];
    
    [car setManufacturer:@"Lancia"];
    [car setModel:@"Stratos"];
    [car setHorizontalHeading:SOUTH];
    [car setTireGrip:.5];

    Airplane *plane = (Airplane*)[VehicleFactory createVehicle:AIRPLANE];
    [plane setManufacturer:@"Boeing"];
    [plane setModel:@"777-200LR"];
    [plane setCurAscentRate:RAPID_ASCENT];
    [plane setHorizontalHeading:NORTH];
    
    JetPoweredRickshaw* rickshaw = (JetPoweredRickshaw*)[VehicleFactory createVehicle:JET_POWERED_RICKSHAW];
    [rickshaw setManufacturer:@"Cycles Maximus"];
    [rickshaw setModel:@"Pedicab"];
    [rickshaw setHorizontalHeading:EAST];
    [rickshaw setFuelRemaining:5];
    
    int moves = arc4random_uniform(10);
    for (int i = 0; i < moves; i++)
    {
        [rickshaw move:arc4random_uniform(400)];
        [car move:arc4random_uniform(400)];
        [plane move:arc4random_uniform(400)];
        
        [car setHorizontalHeading:arc4random_uniform(3)];
        [plane setHorizontalHeading:arc4random_uniform(3)];
        [rickshaw setHorizontalHeading:arc4random_uniform(3)];
        
        int ascents[] = {FLAT_ASCENT, LIGHT_ASCENT, LIGHT_DESCENT, RAPID_ASCENT, RAPID_DESCENT};
        [plane setCurAscentRate:ascents[arc4random_uniform(4)]];
    }
    

    carManuData.text = [car manufacturer];
    carModelData.text = [car model];
    carXData.text = [NSString stringWithFormat:@"%d", [car curX]];
    carYData.text = [NSString stringWithFormat:@"%d", [car curY]];
    carHeadingData.text = [self createHeadingString:[car horizontalHeading]];
    carSpeedData.text = [NSString stringWithFormat:@"%d", [car curSpeed]];
    carTireGripData.text = [NSString stringWithFormat:@"%f", [car tireGrip]];

    planeManuData.text = [plane manufacturer];
    planeModelData.text = [plane model];
    planeXData.text = [NSString stringWithFormat:@"%d", [plane curX]];
    planeYData.text = [NSString stringWithFormat:@"%d", [plane curY]];
    planeZData.text = [NSString stringWithFormat:@"%d", [plane curZ]];
    planeHeadingData.text = [self createHeadingString:[plane horizontalHeading]];
    planeSpeedData.text = [NSString stringWithFormat:@"%d", [plane curSpeed]];
    planeAscentData.text = [NSString stringWithFormat:@"%d m/sec", [plane curAscentRate]];
    
    rickshawManuData.text = [rickshaw manufacturer];
    rickshawModelData.text = [rickshaw model];
    rickshawXData.text = [NSString stringWithFormat:@"%d", [rickshaw curX]];
    rickshawYData.text = [NSString stringWithFormat:@"%d", [rickshaw curY]];
    rickshawHeadingData.text = [self createHeadingString:[rickshaw horizontalHeading]];
    rickshawSpeedData.text = [NSString stringWithFormat:@"%d", [rickshaw curSpeed]];
    rickshawFuelData.text =  [NSString stringWithFormat:@"%d", [rickshaw fuelRemaining]];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setLabelAttributes:(UILabel*)label text:(NSString*)text alignment:(NSTextAlignment)alignment size:(float)size
{
    label.text = text;
    label.font = [UIFont fontWithName:@"HelveticaNeue" size:size];
    label.textAlignment = alignment;
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
