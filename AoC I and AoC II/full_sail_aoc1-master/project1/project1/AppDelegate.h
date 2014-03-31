//
//  AppDelegate.h
//  project1
//
//  Created by Michael Mancuso on 2/4/13.
//  Copyright (c) 2013 Honode Softworks. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

+ (int)generateNextFibonacciNumber:(int)place goldenRatio:(float)goldenRatio;


@end
