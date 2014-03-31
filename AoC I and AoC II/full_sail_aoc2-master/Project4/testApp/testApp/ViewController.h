//
//  ViewController.h
//  testApp
//
//  Created by Michael Mancuso on 5/1/13.
//  Copyright (c) 2013 Hinode Softworks. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UITextView* displayView;
    NSUserDefaults* defaults;
}

-(IBAction)onSwipe:(id)sender;
-(IBAction)onClick:(id)sender;

@end
