//
//  ViewController.m
//  project4
//
//  Created by Michael Mancuso on 2/10/13.
//  Copyright (c) 2013 Hinode Softworks. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    bgcolor = [UIColor colorWithRed:0.161 green:0.161 blue:0.161 alpha:1];
    
    
    self.view.backgroundColor = bgcolor;
    
    //non dynamic sizing constants
    const double screenWidth = [[UIScreen mainScreen] bounds].size.width - 10;
    const double oneQuarterScreenWidth = screenWidth / 4.0f;
    const double threeQuartersScreenWidth = (screenWidth / 4.0f) * 3.0f;
    const double twoFifthsScreenWidth = (screenWidth / 5.0f) * 2.0f;
    const double threeFifthsScreenWidth = screenWidth - twoFifthsScreenWidth;
    const double padding = 5.0f;
    
    //login - top
    usernameLabel = [[UILabel alloc] initWithFrame:CGRectMake(padding, 10.0f, twoFifthsScreenWidth, 30.0f)];
    usernameField = [[UITextField alloc] initWithFrame:CGRectMake(padding + twoFifthsScreenWidth, 10.0f, threeFifthsScreenWidth, 30.0f)];
    
    loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    loginButton.frame = CGRectMake(padding + threeQuartersScreenWidth, 40.0f, oneQuarterScreenWidth, 20.0f);
    
    loginMessage = [[UILabel alloc] initWithFrame:CGRectMake(padding, 70.0f, screenWidth, 100.0f)];
    
    //date - middle
    dateButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    dateButton.frame = CGRectMake(padding, 210.0f, oneQuarterScreenWidth + 10.0f, 30.0f);
    
    //info - bottom
    nameButton = [UIButton buttonWithType:UIButtonTypeInfoLight];
    nameButton.frame = CGRectMake(padding, 280.0f, oneQuarterScreenWidth, 30.0f);
    
    nameDisplay = [[UILabel alloc] initWithFrame:CGRectMake(padding, 330.0f, screenWidth, 100.0f)];
    
    
    UIView *ctx = self.view;

    usernameLabel.text = @"Username: ";
    
    [ctx addSubview:usernameLabel];
    [ctx addSubview:usernameField];
    [ctx addSubview:loginButton];
    [ctx addSubview:loginMessage];
    [ctx addSubview:dateLabel];
    [ctx addSubview:dateButton];
    [ctx addSubview:nameButton];
    [ctx addSubview:nameDisplay];
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    //graphical setup
    [loginButton setTitle:@"Login" forState:UIControlStateNormal];
    [loginButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    loginButton.tag = 0;
    
    usernameLabel.textColor = [UIColor whiteColor];
    usernameLabel.backgroundColor = bgcolor;
    
    usernameField.borderStyle = UITextBorderStyleRoundedRect;
    
    loginMessage.textAlignment = NSTextAlignmentCenter;
    loginMessage.text = @"Please Enter Username.";
    loginMessage.backgroundColor = [UIColor blackColor];
    loginMessage.textColor = [UIColor whiteColor];

    
    [dateButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    [dateButton setTitle:@"Show Date" forState:UIControlStateNormal];
    dateButton.tag = 1;
    
    [nameButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    nameButton.tag = 2;
    
    nameDisplay.textColor = [UIColor whiteColor];
    nameDisplay.backgroundColor = bgcolor;
    nameDisplay.lineBreakMode = NSLineBreakByWordWrapping;
    nameDisplay.numberOfLines = 2;
    
}

-(void)onClick:(UIButton*)sender
{
    if (sender.tag == 0)
    {
        if (usernameField.text.length > 0)
        {
            loginMessage.textColor = [UIColor whiteColor];
            loginMessage.text = [NSString stringWithFormat:@"User %@ has been logged in.", usernameField.text];
            [self.view endEditing:YES];
        }
        else
        {
            loginMessage.textColor = [UIColor colorWithRed:0.749 green:0.016 blue:0.016 alpha:1];
            loginMessage.text = @"Username cannot be empty.";
        }
    }
    else if(sender.tag == 1)
    {
        NSDate *currDate = [NSDate date];
        NSDateFormatter *ndf = [[NSDateFormatter alloc] init];
        [ndf setDateStyle:NSDateFormatterFullStyle];
        [ndf setTimeStyle:NSDateFormatterFullStyle];
        
        NSString *dateString = [ndf stringFromDate:currDate];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Title" message:@"Message" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
        alert.title = @"Date";
        alert.message = [NSString stringWithFormat:@"%@", dateString];
        [alert show];
        
    }
    else //is 2
    {
        nameDisplay.text = @"This application was created by Michael Mancuso.";
    }
}

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

@end
