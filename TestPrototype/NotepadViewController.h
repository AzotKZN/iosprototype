//
//  NotepadViewController.h
//  TestPrototype
//
//  Created by Азат on 09.01.15.
//  Copyright (c) 2015 Azot. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NotepadViewController : UIViewController <UITableViewDataSource, UITableViewDelegate> {
    NSArray *texts;
}
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end
