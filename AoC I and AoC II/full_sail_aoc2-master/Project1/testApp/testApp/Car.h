//
//  Car.h
//  testApp
//
//  Created by Michael Mancuso on 4/9/13.
//  Copyright (c) 2013 Hinode Softworks. All rights reserved.
//

#import "Vehicle.h"

@interface Car : Vehicle

//for the sake of simplicity, this program assumes a strict 15th century definition, and assumes all land is prefectly flat with only two dimensions for car movement.

@property (nonatomic)float tireGrip;

-(id)init;
-(id)initWithHeading:(int)heading;

//override getter for value that requires validation.
-(void)setTireGrip:(float)newTireGrip;

-(void)move:(int)speed;
@end
