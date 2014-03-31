//
//  VehicleFactory.m
//  testApp
//
//  Created by Michael Mancuso on 4/11/13.
//  Copyright (c) 2013 Hinode Softworks. All rights reserved.
//

#import "VehicleFactory.h"


@implementation VehicleFactory

static VehicleFactory* _instance = nil;

+(VehicleFactory*)getInstance
{
    if (!_instance)
    {
        _instance = [[self alloc] init];
    }
    
    return _instance;
}

+(id)alloc
{
    _instance = [super alloc];
    return _instance;
}

//default init is sufficient


-(Vehicle*)createVehicle:(int)vehicleType
{
    int ascentRates[] = {FLAT_ASCENT, LIGHT_ASCENT, RAPID_ASCENT, RAPID_DESCENT, LIGHT_DESCENT};
    
    switch (vehicleType)
    {
        case CAR:
        {
            Car* holder = [[Car alloc] initWithHeading:arc4random_uniform(3)];
            holder.tireGrip = (double)arc4random() / 0x100000000; //hex value of (2^32)-1, the higest value of arc4random (it's around 4.3 tillion).
            return holder;
        }
        case AIRPLANE:
        {
            Airplane* holder = [[Airplane alloc] initWithHeading:arc4random_uniform(3) ascentRate:ascentRates[arc4random_uniform(4)]];
            
            return holder;
        }
        case JET_POWERED_RICKSHAW:
        {
            JetPoweredRickshaw* holder = [[JetPoweredRickshaw alloc] initWithHeading:arc4random_uniform(3)];
            return holder;
        }
    }
    
    return nil;
}

@end
