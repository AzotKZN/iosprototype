//
//  DataViewController.h
//  TestPrototype
//
//  Created by Азат on 15.01.15.
//  Copyright (c) 2015 Azot. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DataViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>{
    NSArray *texts;
}

@property (strong, nonatomic) id dataObject;
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@end
