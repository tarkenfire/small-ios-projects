//
//  DataController.h
//  testApp
//
//  Created by Michael Mancuso on 5/2/13.
//  Copyright (c) 2013 Hinode Softworks. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataController : NSObject

@property (nonatomic) NSString* data;

+(DataController*)getInstance;

@end
