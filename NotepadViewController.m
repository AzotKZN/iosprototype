//
//  NotepadViewController.m
//  TestPrototype
//
//  Created by Азат on 09.01.15.
//  Copyright (c) 2015 Azot. All rights reserved.
//

#import "NotepadViewController.h"
#import "NoteViewController.h"
@interface NotepadViewController ()

@end

@implementation NotepadViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSInteger *count = [texts count];
    return count;
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *c;
    c = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    UIImageView *attachments;
    NSInteger index = [indexPath row];
    
    NSArray *text = texts[index];
    
    c.textLabel.text = text[0];
    c.imageView.image = [UIImage imageNamed:text[1]];
//    attachments = (UIImageView *)[c.contentView viewWithTag:10];
//    attachments.image = [UIImage imageNamed:text[1]];
    
    return c;
    
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
