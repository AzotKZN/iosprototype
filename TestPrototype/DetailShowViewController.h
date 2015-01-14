//
//  DetailShowViewController.h
//  TestPrototype
//
//  Created by Азат on 13.01.15.
//  Copyright (c) 2015 Azot. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "PageContentViewController.h"

@interface DetailShowViewController : UIViewController <UIPageViewControllerDataSource>

- (IBAction)startWalkthrough:(id)sender;
@property (strong, nonatomic) UIPageViewController *pageViewController;
@property (strong, nonatomic) NSArray *pageImages;

@property int *fullImage;
@end
 