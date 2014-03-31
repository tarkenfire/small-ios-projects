//
//  AddItemViewController.h
//  testApp
//
//  Created by Michael Mancuso on 4/24/13.
//  Copyright (c) 2013 Hinode Softworks. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol AddEventDelegate <NSObject>

-(void)addEventToView:(NSString*)valueToAdd;

@end

@interface AddItemViewController : UIViewController
{
    IBOutlet UITextField* input;
}

@property (weak, nonatomic)id <AddEventDelegate> delegate;
@property (nonatomic) NSDate* selectedDate;

-(IBAction)closeKeyboard:(id)sender;
-(IBAction)saveData:(id)sender;
-(IBAction)onChange:(id)sender;

@end


