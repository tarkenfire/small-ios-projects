//
//  ViewController.m
//  testApp
//
//  Created by Michael Mancuso on 5/1/13.
//  Copyright (c) 2013 Hinode Softworks. All rights reserved.
//

#import "ViewController.h"
#import "AddItemViewController.h"
#import "DataController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    defaults = [NSUserDefaults standardUserDefaults];
    
    if(defaults)
    {
        displayView.text = (NSString*)[defaults objectForKey:@"events"];
    }
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    DataController *dc = [DataController getInstance];
    
    if(dc.data && ![dc.data isEqualToString:@""])
    {
        [displayView setText:[NSString stringWithFormat:@"%@ %@", displayView.text, dc.data]];
    }
    
    //always clear data after checking appending.
    dc.data = @"";
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onSwipe:(id)sender
{
    AddItemViewController *addItemVC = [[AddItemViewController alloc ] initWithNibName:@"AddItemViewController" bundle:nil];
    
    [UIView transitionWithView:self.view.superview duration:.5 options:UIViewAnimationOptionTransitionFlipFromLeft animations:^{[self presentViewController:addItemVC animated:false completion:nil];} completion:nil];
}

-(IBAction)onClick:(id)sender
{
    [defaults setObject:displayView.text forKey:@"events"];
    [defaults synchronize];
}

@end
