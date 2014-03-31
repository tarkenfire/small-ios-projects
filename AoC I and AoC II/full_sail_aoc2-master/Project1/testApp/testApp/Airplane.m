//
//  Airplane.m
//  testApp
//
//  Created by Michael Mancuso on 4/9/13.
//  Copyright (c) 2013 Hinode Softworks. All rights reserved.
//

#import "Airplane.h"

@implementation Airplane

@synthesize curZ = _curZ;

-(id)init
{
    self = [super init];
    [self setCurAscentRate:FLAT_ASCENT];
    [self setHorizontalHeading:NORTH];
    
    return self;
}

-(id)initWithHeading:(int)heading
{
    return [super initWithHeading:heading];
}

-(id)initWithHeading:(int)heading ascentRate:(int)ascentRate
{
    self = [super initWithHeading:heading];
    
    if (ascentRate == FLAT_ASCENT || ascentRate == LIGHT_ASCENT || ascentRate == RAPID_ASCENT || ascentRate == LIGHT_DESCENT || ascentRate == RAPID_DESCENT)
    {
        [self setCurAscentRate:ascentRate];
    }
    else
        [self setCurAscentRate:FLAT_ASCENT];
    
    return self;
}

-(void)move:(int)speed
{
    [super move:speed];
    self.curZ += self.curAscentRate;
}

//if z < 0, plane == crashed.
-(void)setCurZ:(int)newZ
{
    if (newZ <= 0)
    {
        [self setCurAscentRate:FLAT_ASCENT];
        _curZ = 0;
    }
    else
        _curZ = newZ;
}

@end
