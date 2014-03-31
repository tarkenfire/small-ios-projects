//
//  Airplane.h
//  testApp
//
//  Created by Michael Mancuso on 4/9/13.
//  Copyright (c) 2013 Hinode Softworks. All rights reserved.
//

#import "Vehicle.h"

@interface Airplane : Vehicle

typedef enum{ FLAT_ASCENT = 0, LIGHT_ASCENT = 25, RAPID_ASCENT=50, LIGHT_DESCENT = -25, RAPID_DESCENT = -50} ascentRate;

//Fictional world where only difference between planes and cars is a third axis.
@property (nonatomic) int curZ;
@property int curAscentRate;

-(id)init;
-(id)initWithHeading:(int)heading;
-(id)initWithHeading:(int)heading ascentRate:(int)ascentRate;

-(void)move:(int)speed;

//override mutator
-(void)setCurZ:(int)newZ;


@end
