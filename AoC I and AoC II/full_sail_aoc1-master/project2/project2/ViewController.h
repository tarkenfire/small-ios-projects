//
//  ViewController.h
//  project2
//
//  Created by Michael Mancuso on 2/10/13.
//  Copyright (c) 2013 Hinode Softworks. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    UILabel *title;
    UILabel *authorLabel;
    UILabel *authorName;
    UILabel *publishDateLabel;
    UILabel *publishDateYear;
    UILabel *summaryLabel;
    UILabel *summary;
    UILabel *tagsLabel;
    UILabel *tags;
}

-(void)setLabelAttributes:(UILabel*)label text:(NSString*)text alignment:(NSTextAlignment)alignment size:(float)size fontColor:(UIColor*)fontColor backgroundColor:(UIColor*)backgroundColor numOfLines:(int)numOfLines;

@end
