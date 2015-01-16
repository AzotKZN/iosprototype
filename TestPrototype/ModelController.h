//
//  ModelController.h
//  TestMultiTables
//
//  Created by Азат on 08.01.15.
//  Copyright (c) 2015 Azot. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DataViewController;

@interface ModelController : NSObject <UIPageViewControllerDataSource>

- (DataViewController *)viewControllerAtIndex:(NSUInteger)index storyboard:(UIStoryboard *)storyboard;
- (NSUInteger)indexOfViewController:(DataViewController *)viewController;

@property (nonatomic, strong) NSString *pageIndex;
@end
