//
//  VehicleFactory.h
//  testApp
//
//  Created by Michael Mancuso on 4/11/13.
//  Copyright (c) 2013 Hinode Softworks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Vehicle.h"
#import "Car.h"
#import "Airplane.h"
#import "JetPoweredRickshaw.h"


@interface VehicleFactory : NSObject

typedef enum {CAR, AIRPLANE, JET_POWERED_RICKSHAW} vehicleTypes;

+(Vehicle*)createVehicle:(int)vehicleType;

@end
