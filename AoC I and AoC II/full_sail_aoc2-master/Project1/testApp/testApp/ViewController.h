//
//  ViewController.h
//  testApp
//
//  Created by Michael Mancuso on 4/9/13.
//  Copyright (c) 2013 Hinode Softworks. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //UI for car section.
    UILabel* carMainLabel;
    UILabel* carManuLabel;
    UILabel* carManuData;
    UILabel* carModelLabel;
    UILabel* carModelData;
    UILabel* carXLabel;
    UILabel* carXData;
    UILabel* carYLabel;
    UILabel* carYData;
    UILabel* carHeadingLabel;
    UILabel* carHeadingData;
    UILabel* carSpeedLabel;
    UILabel* carSpeedData;
    UILabel* carTireGripLabel;
    UILabel* carTireGripData;
    
    //UI for Airplane
    UILabel* planeMainLabel;
    UILabel* planeManuLabel;
    UILabel* planeManuData;
    UILabel* planeModelLabel;
    UILabel* planeModelData;
    UILabel* planeXLabel;
    UILabel* planeXData;
    UILabel* planeYLabel;
    UILabel* planeYData;
    UILabel* planeZLabel;
    UILabel* planeZData;
    UILabel* planeHeadingLabel;
    UILabel* planeHeadingData;
    UILabel* planeSpeedLabel;
    UILabel* planeSpeedData;
    UILabel* planeAscentLabel;
    UILabel* planeAscentData;
    
    //UI for Rickshaw
    UILabel* rickshawMainLabel;
    UILabel* rickshawManuLabel;
    UILabel* rickshawManuData;
    UILabel* rickshawModelLabel;
    UILabel* rickshawModelData;
    UILabel* rickshawXLabel;
    UILabel* rickshawXData;
    UILabel* rickshawYLabel;
    UILabel* rickshawYData;
    UILabel* rickshawHeadingLabel;
    UILabel* rickshawHeadingData;
    UILabel* rickshawSpeedLabel;
    UILabel* rickshawSpeedData;
    UILabel* rickshawFuelLabel;
    UILabel* rickshawFuelData;
}

-(void)setLabelAttributes:(UILabel*)label text:(NSString*)text alignment:(NSTextAlignment)alignment size:(float)size;
-(NSString*)createHeadingString:(int)headingEnum;

@end
