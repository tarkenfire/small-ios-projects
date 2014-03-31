//
//  AddItemViewController.m
//  testApp
//
//  Created by Michael Mancuso on 4/24/13.
//  Copyright (c) 2013 Hinode Softworks. All rights reserved.
//

#import "AddItemViewController.h"

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
    
    //need to set date at start to prevent an exception if the date isn't changed.
    
    self.selectedDate = [NSDate date];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)closeKeyboard:(id)sender
{
    [self.view endEditing:YES];
}

-(IBAction)saveData:(id)sender
{
    NSString* holder = [input text];
    
    if([holder isEqualToString:@""]) //if blank, don't add event
        return;
    
    NSMutableString* valueToReturn = [[NSMutableString alloc]init];
    [valueToReturn appendFormat:@"Event: %@\n", holder];
    
    
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    
    [df setDateStyle:NSDateFormatterMediumStyle];
    [df setTimeStyle:NSDateFormatterShortStyle];
    
    NSString *dateHolder = [df stringFromDate:self.selectedDate];
    [valueToReturn appendFormat:@" Date: %@\n\n", dateHolder];
    
    [self.delegate addEventToView:valueToReturn];
    [self dismissViewControllerAnimated:true completion:nil];
}

-(IBAction)onChange:(id)sender
{
    UIDatePicker *holder = (UIDatePicker*)sender;
    self.selectedDate = [holder date];
}

@end
