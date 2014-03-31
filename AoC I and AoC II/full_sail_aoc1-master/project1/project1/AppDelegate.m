//
//  AppDelegate.m
//  project1
//
//  Created by Michael Mancuso on 2/4/13.
//  Copyright (c) 2013 Hinode Softworks. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];

    //Declare variables that support project; not in project
    NSMutableArray *fibNumbers = [NSMutableArray array];
    int threeByFourMatrix[3][4] = { { 1, 2, 3, 4 }, { 5, 6, 7, 8 }, { 9, 10, 11, 12 } };
    int randomNumber = arc4random_uniform(11);
    int loopSentinel = 0, counter = 0;
    
    int testNumbers[4] = {100, arc4random_uniform(1000), 500, arc4random_uniform(1000)};
    
    //INT/FLOAT EXAMPLES
    float goldenRatioApprox = 1.6180339887498f;
    int truncatedRatio = (int)goldenRatioApprox; //Shows the truncation typecasting mechanism
    
    NSLog(@"Float Golden Ratio: %f, Casted Golden Ratio: %d", goldenRatioApprox,truncatedRatio);
    
    
    //while loop example. Generate a list of the first 20 Fibonacci numbers
    NSLog(@"Will now find first 20 Fibonacci numbers."); // 20th fib num = 6765 
    while (loopSentinel < 6000)
    {
        loopSentinel = [[self class]generateNextFibonacciNumber:++counter goldenRatio:goldenRatioApprox];
        [fibNumbers addObject:[NSNumber numberWithInt:loopSentinel]];
        NSLog(@"Counter: %d", counter);
    }
    
    NSLog(@"Number of iterations to reach last number: %d", counter);
    
    //for loop example
    for (int i = 0; i < [fibNumbers count]; i++)
    {
        NSLog(@"Value of Fib Number at position %d is: %d", i + 1, [[fibNumbers objectAtIndex:i] integerValue]);
    }
    
    //nested loop example
    NSLog(@"Print contents of matrix containing the numbers 1 - 12.");
    for (int outer = 0; outer < 3; outer++)
    {
        for(int inner = 0; inner < 4; inner++)
        {
            NSLog(@"%d", threeByFourMatrix[outer][inner]);
        }
    }
    
    //if/elseif/else example
    if (randomNumber > 5)
    {
        NSLog(@"The random number is greater than 5.");
    }
    else if (randomNumber < 5)
    {
        NSLog(@"The random number is less than 5.");
    }
    else
    {
        NSLog(@"The random number is 5.");
    }
    
    //logic example
    NSLog(@"Determine propreties of psuedo-random numbers in an array.");

    for (int i = 0; i <= 4; i++)
    {
        int holder = testNumbers[i];
        
        
        if((holder % 2 == 0 && holder > 500) || (holder % 2 == 0 && holder < 500))
        {
            //even
            if(holder > 500)
            {
                NSLog(@"Number at position %d is even and greater than 500.", i);
            }
            else
            {
                NSLog(@"Number position %d is even and less than or equal to 500.", i);
            }
        }
        else
        {
            //odd
            if(holder > 500)
            {
                NSLog(@"Number at position %d is odd and greater than 500.", i);
            }
            else
            {
                NSLog(@"Number position %d is odd and less than or equal to 500.", i);
            }
        }
    }
    
    //boolean example
    BOOL boolValue = YES;
    
    if(boolValue)
    {
        NSLog(@"Value is YES.");
    }
    else
    {
        NSLog(@"This line will be never be seen.");
    }
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application{}

- (void)applicationDidEnterBackground:(UIApplication *)application{}

- (void)applicationWillEnterForeground:(UIApplication *)application{}

- (void)applicationDidBecomeActive:(UIApplication *)application{}

- (void)applicationWillTerminate:(UIApplication *)application{}

+ (int)generateNextFibonacciNumber:(int)place goldenRatio:(float)goldenRatio
{
    //find fib number
    double holder = (pow(goldenRatio, place) - pow((1.0 - goldenRatio), place)) / sqrt(5.0);
    return holder;
}

@end