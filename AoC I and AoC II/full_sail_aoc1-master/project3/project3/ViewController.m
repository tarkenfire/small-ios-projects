//
//  ViewController.m
//  project3
//
//  Created by Michael Mancuso on 2/10/13.
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
    
    NSInteger firstInt = arc4random_uniform(10), secondInt = arc4random_uniform(10);
    NSString *firstString = @"This is", *secondString = @" a sentence.";

    //equal (compare)
    NSString* resultMessage = [[self class] equal:firstInt toNumber:secondInt] ? [NSString stringWithFormat:@"First Value is %d.\nSecond Value is %d.\nValues are equal.", firstInt, secondInt] : [NSString stringWithFormat:@"First Value is %d.\nSecond Value is %d.\nValues are NOT equal.", firstInt, secondInt];
    [self displayAlertWithString:@"Comparison" message:[NSString stringWithFormat:@"%@", resultMessage]];
    
    //add
    NSNumber* sum =[NSNumber numberWithInteger:[[self class] add:firstInt second:secondInt]];
    [self displayAlertWithString:@"Add" message:[NSString stringWithFormat:@"The number is %@", [sum stringValue]]];
    
    //append
    [self displayAlertWithString:@"Append" message:[[self class]append:firstString second:secondString]];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

+(NSInteger)add:(NSInteger)first second:(NSInteger)second
{
    return first + second;
}

//"compare" is a misleading name in my mind; implies -1,0,1 comparison between numbers, not equality only.
+(BOOL)equal:(NSInteger)first toNumber:(NSInteger)toNumber
{
    if (first == toNumber)
        return YES;
    else
        return NO;
}

+(NSString*)append:(NSString*)first second:(NSString*)second
{
    NSMutableString* holder = [NSMutableString stringWithString:first];
    [holder appendString:second];
    
    return holder;
}

-(void)displayAlertWithString:(NSString*)title message:(NSString*)message
{
    UIAlertView* holder = [[UIAlertView alloc] initWithTitle:@"Title" message:@"Message" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
    [holder setTitle:title];
    [holder setMessage:message];
    [holder show];
}

@end
