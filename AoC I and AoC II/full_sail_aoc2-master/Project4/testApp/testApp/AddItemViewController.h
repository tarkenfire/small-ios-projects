//
//  AddItemViewController.h
//  testApp
//
//  Created by Michael Mancuso on 5/1/13.
//  Copyright (c) 2013 Hinode Softworks. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddItemViewController : UIViewController <UIAlertViewDelegate>
{
    IBOutlet UITextField* titleInput;
    IBOutlet UIDatePicker* picker;
}

@property (nonatomic) NSDate* selectedDate;
-(IBAction)onClick:(id)sender;
-(IBAction)onDateChanged:(id)sender;
-(IBAction)onSwipe:(id)sender;

-(void)showWarningDialog;
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex;


@end
