//
//  AddItemViewController.m
//  testApp
//
//  Created by Michael Mancuso on 5/1/13.
//  Copyright (c) 2013 Hinode Softworks. All rights reserved.
//

#import "AddItemViewController.h"
#import "DataController.h"

@interface AddItemViewController ()

@end

@implementation AddItemViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.selectedDate = [NSDate date];
    picker.minimumDate = [NSDate date];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onClick:(id)sender
{
    [self.view endEditing:YES];
}

-(void)onSwipe:(id)sender
{
    DataController* dc = [DataController getInstance];
    dc.data =@""; //to not return nil to first view.
    
    NSString* holder = [titleInput text];
    
    if([holder isEqualToString:@""]) //if blank, don't add event
    {
        [self showWarningDialog];
        return;
    }
    
    NSMutableString* valueToReturn = [[NSMutableString alloc]init];
    [valueToReturn appendFormat:@"Event: %@\n", holder];
    
    
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    
    [df setDateStyle:NSDateFormatterMediumStyle];
    [df setTimeStyle:NSDateFormatterShortStyle];
    
    NSString *dateHolder = [df stringFromDate:self.selectedDate];
    [valueToReturn appendFormat:@" Date: %@\n\n", dateHolder];
    
    dc.data = valueToReturn;
    
    [UIView transitionWithView:self.view.superview duration:.5 options:UIViewAnimationOptionTransitionFlipFromRight animations:^{[self dismissViewControllerAnimated:false completion:nil];} completion:nil];
}


-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    switch (buttonIndex)
    {
        case 0: //cancel and return to add screen
            return;
        case 1: //continue and close view
            [UIView transitionWithView:self.view.superview duration:.5 options:UIViewAnimationOptionTransitionFlipFromRight animations:^{[self dismissViewControllerAnimated:false completion:nil];} completion:nil];
            break;
    }
}

-(void)showWarningDialog
{
    UIAlertView* alert = [[UIAlertView alloc]initWithTitle:@"Warning" message:@"You have not entered an event name, no event will be saved. Continue?" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Continue", nil];
    [alert show];
}

-(IBAction)onDateChanged:(id)sender
{
    UIDatePicker *holder = (UIDatePicker*)sender;
    self.selectedDate = [holder date];
}

@end
