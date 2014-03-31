//
//  ViewController.m
//  testApp
//
//  Created by Michael Mancuso on 4/24/13.
//  Copyright (c) 2013 Hinode Softworks. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)addEventToView:(NSString*)valueToAdd
{
    [outputView setText:[NSString stringWithFormat:@"%@ %@", outputView.text, valueToAdd]];
}

-(IBAction)onClick:(id)sender
{
    AddItemViewController *addItemVC = [[AddItemViewController alloc ] initWithNibName:@"AddItemViewController" bundle:nil];
    addItemVC.delegate = self;
    [self presentViewController:addItemVC animated:true completion:nil];
}

@end
