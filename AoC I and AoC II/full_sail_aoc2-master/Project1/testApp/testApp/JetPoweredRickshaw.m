//
//  JetPoweredRickshaw.m
//  testApp
//
//  Created by Michael Mancuso on 4/11/13.
//  Copyright (c) 2013 Hinode Softworks. All rights reserved.
//

#import "JetPoweredRickshaw.h"

@implementation JetPoweredRickshaw

-(id)init
{
    self = [super init];
    [self setFuelRemaining:5];
    return self;
}

-(id)initWithHeading:(int)heading
{
    self = [super initWithHeading:heading];
    [self setFuelRemaining:5];
    return self;
}

//without fuel, the rickshaw will only move at a very slow speed, regardless of the speed setting.
-(void)move:(int)speed
{
    if ([self fuelRemaining] > 0)
        [super move:speed];
    else
        [super move:5];
    
    [self setFuelRemaining:self.fuelRemaining - 1];
}
@end
