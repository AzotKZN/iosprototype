//
//  NoteViewController.m
//  TestPrototype
//
//  Created by Азат on 12.01.15.
//  Copyright (c) 2015 Azot. All rights reserved.
//

#import "NoteViewController.h"

@interface NoteViewController ()

@end

@implementation NoteViewController
@synthesize noteText;
@synthesize noteTextView;
@synthesize noteImageView;
@synthesize noteImage;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    noteTextView.text = noteText;
    //noteImageView.image = [UIImage imageNamed:noteImage];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
