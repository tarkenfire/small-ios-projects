//
//  JetPoweredRickshaw.h
//  testApp
//
//  Created by Michael Mancuso on 4/11/13.
//  Copyright (c) 2013 Hinode Softworks. All rights reserved.
//

#import "Vehicle.h"

@interface JetPoweredRickshaw : Vehicle

@property int fuelRemaining;

-(id)init;
-(id)initWithHeading:(int)heading;

-(void)move:(int)speed;
@end
