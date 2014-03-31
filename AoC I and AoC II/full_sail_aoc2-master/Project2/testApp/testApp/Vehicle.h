//
//  Vehicle.h
//  testApp
//
//  Created by Michael Mancuso on 4/9/13.
//  Copyright (c) 2013 Hinode Softworks. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Vehicle : NSObject

typedef enum{ NORTH = 0, SOUTH = 1, WEST = 2, EAST = 3 } cardinalDirection;

extern const int MAX_SPEED;

@property (nonatomic, strong)NSString* manufacturer;
@property (nonatomic, strong)NSString* model;

@property (nonatomic)int curSpeed;

//simulated cartesian points; all vehicles are assumed to have an x and y, but only some will have a z.
@property int curX;
@property int curY;

//simmed x/y plane heading angle
@property (nonatomic) int horizontalHeading;

-(id)init;
-(id)initWithHeading:(int)heading;


-(void)move:(int)speed;


@end
