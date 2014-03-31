//
//  ViewController.m
//  project2
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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    //sizing constants. NOT DYNAMIC.
    const double screenWidth = [[UIScreen mainScreen] bounds].size.width - 10;
    const double oneQuarterScreenWidth = screenWidth / 4.0f;
    const double threeQuartersScreenWidth = (screenWidth / 4.0f) * 3.0f;
    const double padding = 5.0f;
    
    //allocation and positioning of labels
    title = [[UILabel alloc] initWithFrame:CGRectMake(padding, 0.0f, screenWidth, 30.0f)];
    
    authorLabel = [[UILabel alloc] initWithFrame:CGRectMake(padding, 30.0f, oneQuarterScreenWidth, 20.0f)];
    authorName = [[UILabel alloc] initWithFrame:CGRectMake(padding + oneQuarterScreenWidth, 30.0f, threeQuartersScreenWidth, 20.0f)];
    
    publishDateLabel = [[UILabel alloc] initWithFrame:CGRectMake(padding, 50.0f, threeQuartersScreenWidth, 20.0f)];
    publishDateYear = [[UILabel alloc] initWithFrame:CGRectMake(padding + threeQuartersScreenWidth, 50.0f, oneQuarterScreenWidth, 20.0f)];
    
    summaryLabel = [[UILabel alloc] initWithFrame:CGRectMake(padding, 70.0f, screenWidth, 20.0f)];
    summary = [[UILabel alloc] initWithFrame:CGRectMake(padding, 90.0f, screenWidth, 200.0f)];
    
    tagsLabel = [[UILabel alloc] initWithFrame:CGRectMake(padding, 290.0f, screenWidth, 20.0f)];
    tags = [[UILabel alloc] initWithFrame:CGRectMake(padding, 310.0f, screenWidth, 60.0f)];

    //attach views to container
    [self.view addSubview:title];
    [self.view addSubview:authorLabel];
    [self.view addSubview:authorName];
    [self.view addSubview:publishDateLabel];
    [self.view addSubview:publishDateYear];
    [self.view addSubview:summaryLabel];
    [self.view addSubview:summary];
    [self.view addSubview:tagsLabel];
    [self.view addSubview:tags];
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    //colors for method calling simplicity --need 19
    UIColor *black = [UIColor blackColor];
    UIColor *white = [UIColor whiteColor];
    
    UIColor *baseRed = [UIColor colorWithRed:1 green:0.031 blue:0 alpha:1]; /*#ff0800*/
    UIColor *darkerRed = [UIColor colorWithRed:0.498 green:0.016 blue:0 alpha:1]; /*#7f0400*/
    UIColor *lighterRed = [UIColor colorWithRed:1 green:0.467 blue:0.447 alpha:1]; /*#ff7772*/
    
    UIColor *baseBlue = [UIColor colorWithRed:0 green:0.008 blue:1 alpha:1]; /*#0002ff*/
    UIColor *darkerBlue = [UIColor colorWithRed:0 green:0.004 blue:0.498 alpha:1]; /*#00017f*/
    UIColor *lighterBlue = [UIColor colorWithRed:0.447 green:0.451 blue:1 alpha:1]; /*#7273ff*/
    
    UIColor *baseGreen = [UIColor colorWithRed:0 green:1 blue:0.216 alpha:1]; /*#00ff37*/
    UIColor *darkerGreen = [UIColor colorWithRed:0 green:0.498 blue:0.106 alpha:1]; /*#007f1b*/
    UIColor *lighterGreen = [UIColor colorWithRed:0.447 green:1 blue:0.565 alpha:1]; /*#72ff90*/
    
    UIColor *yellow = [UIColor colorWithRed:1 green:0.98 blue:0 alpha:1]; /*#fffa00*/
    UIColor *purple = [UIColor colorWithRed:0.859 green:0 blue:1 alpha:1]; /*#db00ff*/
    UIColor *cyan = [UIColor colorWithRed:0 green:0.929 blue:1 alpha:1]; /*#00edff*/
    UIColor *orange = [UIColor colorWithRed:1 green:0.694 blue:0 alpha:1]; /*#ffb100*/
    UIColor *brown = [UIColor colorWithRed:0.298 green:0.263 blue:0.212 alpha:1]; /*#4c4336*/
    UIColor *pink = [UIColor colorWithRed:1 green:0.451 blue:0.843 alpha:1]; /*#ff73d7*/
    UIColor *blueGray = [UIColor colorWithRed:0.212 green:0.247 blue:0.298 alpha:1]; /*#363f4c*/
    UIColor *darkOrange = [UIColor colorWithRed:1 green:0.271 blue:0 alpha:1]; /*#ffcf00*/
    
    //other vars for calling simplicity
    NSString *summaryString = @"Of Mice and Men follows the story of two migrant workers by the name of Lennie and George, the latter of whom has a severe mental disability. The two get a job working on the plantation of a man named Curley. George's condition combined with an abundance of strength and Curley's manipulative wife leads to tradegy, forcing Lennie to make a merciful-yet-tough decision about his friend.";
    
    //set bg color
    self.view.backgroundColor = black;
    
    //check if labels are inited then set attributes
    if (title)
        [self setLabelAttributes:title text:@"Of Mice And Men" alignment:NSTextAlignmentCenter size:28.0f fontColor:baseRed backgroundColor:baseBlue numOfLines:1];
    if(authorLabel)
        [self setLabelAttributes:authorLabel text:@"Author:" alignment:NSTextAlignmentLeft size:18.0f fontColor:darkerRed backgroundColor:darkerBlue numOfLines:1];
    if(authorName)
        [self setLabelAttributes:authorName text:@"John Steinbeck" alignment:NSTextAlignmentRight size:18.0f fontColor:lighterRed backgroundColor:lighterBlue numOfLines:1];
    if (publishDateLabel)
        [self setLabelAttributes:publishDateLabel text:@"Published" alignment:NSTextAlignmentLeft size:18.0f fontColor:baseGreen backgroundColor:pink numOfLines:1];
    if(publishDateYear)
        [self setLabelAttributes:publishDateYear text:@"1937" alignment:NSTextAlignmentRight size:18.0f fontColor:cyan backgroundColor:orange numOfLines:1];
    if(summaryLabel)
        [self setLabelAttributes:summaryLabel text:@"Summary" alignment:NSTextAlignmentLeft size:18.0f fontColor:white backgroundColor:blueGray numOfLines:1];
    if(summary)
        [self setLabelAttributes:summary text:summaryString alignment:NSTextAlignmentCenter size:14.0f fontColor:purple backgroundColor:brown numOfLines:15];
    if(tagsLabel)
        [self setLabelAttributes:tagsLabel text:@"Tags" alignment:NSTextAlignmentLeft size:18.0f fontColor:yellow backgroundColor:darkerGreen numOfLines:1];
    if (tags)
        [self setLabelAttributes:tags text:@"PLACEHOLDER" alignment:NSTextAlignmentCenter size:18.0f fontColor:darkOrange backgroundColor:lighterGreen numOfLines:2];
    
    //dynamic text for tags.
    NSString *rawTags[5] = {@"George", @"Lennie", @"Curley", @"Slim", @"Feeding the Rabbits"};
    
    NSArray *tagsArray = [NSArray arrayWithObjects:rawTags count:5];
    NSMutableString *tagsString = [NSMutableString  string];
    
    for (NSString *nss in tagsArray)
    {
        if ([[tagsArray lastObject] isEqualToString:nss])
            [tagsString appendFormat:@"and %@.", nss];
        else
            [tagsString appendFormat:@"%@, ",nss];
    }
    
    tags.text = tagsString;
}

-(void)setLabelAttributes:(UILabel*)label text:(NSString*)text alignment:(NSTextAlignment)alignment size:(float)size fontColor:(UIColor*)fontColor backgroundColor:(UIColor *)backgroundColor numOfLines:(int)numOfLines
{
    label.text = text;
    label.font = [UIFont fontWithName:@"HelveticaNeue" size:size];
    label.textAlignment = alignment;
    label.textColor = fontColor;
    label.backgroundColor = backgroundColor;
    label.numberOfLines = numOfLines;
}

@end
