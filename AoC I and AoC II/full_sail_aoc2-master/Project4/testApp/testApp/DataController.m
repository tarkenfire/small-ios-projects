//
//  DataController.m
//  testApp
//
//  Created by Michael Mancuso on 5/2/13.
//  Copyright (c) 2013 Hinode Softworks. All rights reserved.
//

#import "DataController.h"

@implementation DataController

static DataController* _instance = nil;

+(DataController*)getInstance
{
    if (!_instance)
    {
        _instance = [[self alloc] init];
    }
    
    return _instance;
}

//all this class needs to do is exist and hold the string data; no other methods needed.
@end
