//
//  Vehicle.m
//  testApp
//
//  Created by Michael Mancuso on 4/9/13.
//  Copyright (c) 2013 Hinode Softworks. All rights reserved.
//

#import "Vehicle.h"

@implementation Vehicle

const int MAX_SPEED = 400;

-(id)init
{
    self = [super init];

    //already 0 by definition, but setting them for clarity.
    self.curX = 0;
    self.curY = 0;
    self.curSpeed = 0;
    
    if(!self.horizontalHeading)
        [self setHorizontalHeading:NORTH];

    return self;
}


-(id)initWithHeading:(int)heading
{
    self = [self init];
    
    if (heading == NORTH || heading == SOUTH || heading == WEST || heading == EAST)
        [self setHorizontalHeading:heading];
    else
        [self setHorizontalHeading:NORTH];
    
    return self;
}


-(void)move:(int)horizontalSpeed
{
    if (horizontalSpeed >= 0 && horizontalSpeed <= MAX_SPEED )
        [self setCurSpeed:horizontalSpeed];
    else
        [self setCurSpeed:200];
    
    switch (self.horizontalHeading)
    {
        case NORTH:
            self.curX += self.curSpeed;
            break;
        case SOUTH:
            self.curX -= self.curSpeed;
            break;
        case EAST:
            self.curY += self.curSpeed;
            break;
        case WEST:
            self.curY -= self.curSpeed;
            break;
    }
}



@end
