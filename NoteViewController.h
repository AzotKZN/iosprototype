//
//  NoteViewController.h
//  TestPrototype
//
//  Created by Азат on 12.01.15.
//  Copyright (c) 2015 Azot. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NoteViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *noteTextView;
@property (strong, nonatomic) NSString *noteText;
@property (weak, nonatomic) IBOutlet UIImageView *noteImageView;
@property (strong, nonatomic) NSString *noteImage;

@end
