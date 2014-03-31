//
//  ViewController.h
//  testApp
//
//  Created by Michael Mancuso on 4/24/13.
//  Copyright (c) 2013 Hinode Softworks. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddItemViewController.h"

@interface ViewController : UIViewController <AddEventDelegate>
{
    IBOutlet UITextView* outputView;
}

-(IBAction)onClick:(id)sender;

@end
