//
//  PageContentViewController.h
//  TestPrototype
//
//  Created by Азат on 13.01.15.
//  Copyright (c) 2015 Azot. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PageContentViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *BackgroundImageView;
@property NSString* imageFile;
@property NSUInteger pageIndex;

@end
