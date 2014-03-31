//
//  Car.m
//  testApp
//
//  Created by Michael Mancuso on 4/9/13.
//  Copyright (c) 2013 Hinode Softworks. All rights reserved.
//

#import "Car.h"

@implementation Car

@synthesize tireGrip = _tireGrip;

-(id)init
{
    self = [super init];
    [self setTireGrip:1.0f];//grip must be set with mutator after init.
    
    return self;
}

-(id)initWithHeading:(int)heading
{
    self = [super initWithHeading:heading];
    [self setTireGrip:1.0f];
    return self;
}


-(void)setTireGrip:(float)newTireGrip
{
    //validate input before mutator and only change if value is in range.
    if (newTireGrip >= 0.0f && newTireGrip <= 1.0f )
            _tireGrip = newTireGrip;
}

//this program is set in a ficional world where tire grip has massive impact over the speed of a car rather than the handling of a car.
-(void)move:(int)speed
{
    [super move:speed * self.tireGrip];
}

@end
