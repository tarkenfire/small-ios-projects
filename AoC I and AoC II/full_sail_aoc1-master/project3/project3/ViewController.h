//
//  ViewController.h
//  project3
//
//  Created by Michael Mancuso on 2/10/13.
//  Copyright (c) 2013 Hinode Softworks. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

+(NSInteger)add:(NSInteger)first second:(NSInteger)second;
+(BOOL)equal:(NSInteger)first toNumber:(NSInteger)toNumber;
+(NSString*)append:(NSString*)first second:(NSString*)second;
-(void)displayAlertWithString:(NSString*)title message:(NSString*)message;

@end
