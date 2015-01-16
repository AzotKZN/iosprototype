//
//  RootViewController.h
//  TestPrototype
//
//  Created by Азат on 15.01.15.
//  Copyright (c) 2015 Azot. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UIViewController <UIPageViewControllerDelegate>

@property (strong, nonatomic) IBOutlet UIPageViewController *pageViewController;

@end
