//
//  DataViewController.m
//  TestPrototype
//
//  Created by Азат on 15.01.15.
//  Copyright (c) 2015 Azot. All rights reserved.
//

#import "DataViewController.h"
#import "NoteViewController.h"
#import "ModelController.h"

@interface DataViewController ()

@end

@implementation DataViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSArray *text1, *text2, *text3, *text4, *text5, *text6, *text7;
    
    text1 = [NSArray arrayWithObjects:@"Заметка 1", @"Nature.jpeg", nil];
    text2 = [NSArray arrayWithObjects:@"Заметка 2", @"Nature.jpeg", nil];
    text3 = [NSArray arrayWithObjects:@"Заметка 3", @"Nature.jpeg", nil];
    text4 = [NSArray arrayWithObjects:@"Заметка 4", @"Nature.jpeg", nil];
    text5 = [NSArray arrayWithObjects:@"Заметка 5", @"Nature.jpeg", nil];
    text6 = [NSArray arrayWithObjects:@"Заметка 6", @"Nature.jpeg", nil];
    text7 = [NSArray arrayWithObjects:@"Заметка 7", @"Nature.jpeg", nil];
    
    texts = [NSArray arrayWithObjects:text1,text2,text3,text4,text5,text6,text7, nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void) viewDidAppear:(BOOL)animated{
    
    [super viewDidAppear:animated];
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"ShowDetail"]){
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NoteViewController *noteViewController = segue.destinationViewController;
        NSInteger index = [indexPath row];
        NSArray *text = texts[index];
        noteViewController.noteText = text[0];
        noteViewController.noteImage = text[1];
    }
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
    
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 6;
    
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *c;
    c = [tableView dequeueReusableCellWithIdentifier:@"identif"];
    UIImageView *attachments;
    NSInteger index = [indexPath row];
    
    NSArray *text = texts[index];
    
    c.textLabel.text = text[0];
    c.imageView.image = [UIImage imageNamed:text[1]];
        
    return c;
}

@end
