//
//  ViewController.h
//  project4
//
//  Created by Michael Mancuso on 2/10/13.
//  Copyright (c) 2013 Hinode Softworks. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    UILabel *usernameLabel;
    UITextField *usernameField;
    UIButton *loginButton;
    UILabel *loginMessage;
    
    UILabel *dateLabel;
    UIButton *dateButton;
    
    UIButton *nameButton;
    UILabel *nameDisplay;
    UIColor *bgcolor;
}

-(void)onClick:(UIButton*)sender;

@end
