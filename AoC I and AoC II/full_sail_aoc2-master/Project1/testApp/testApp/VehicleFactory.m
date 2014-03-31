//
//  VehicleFactory.m
//  testApp
//
//  Created by Michael Mancuso on 4/11/13.
//  Copyright (c) 2013 Hinode Softworks. All rights reserved.
//

#import "VehicleFactory.h"


@implementation VehicleFactory

+(Vehicle*)createVehicle:(int)vehicleType
{
    switch (vehicleType)
    {
        case CAR:
            return [[Car alloc]init];
        case AIRPLANE:
            return[[Airplane alloc]init];
        case JET_POWERED_RICKSHAW:
            return [[JetPoweredRickshaw alloc]init];
    }
    
    return nil;
}

@end
