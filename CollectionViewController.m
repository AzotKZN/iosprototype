//
//  CollectionViewController.m
//  TestPrototype
//
//  Created by Азат on 12.01.15.
//  Copyright (c) 2015 Azot. All rights reserved.
//

#import "CollectionViewController.h"
#import "DetailShowViewController.h"
@interface CollectionViewController (){
    NSArray *attachPhoto;
    UICollectionView *collectionView;
    NSIndexPath *indexPath;
}
@end


@implementation CollectionViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    attachPhoto = [NSArray arrayWithObjects:@"1.jpg", @"2.jpg", @"3.jpg", @"4.jpg", @"5.jpg", @"6.jpg", @"7.jpg", @"8.jpg", @"9.jpg", @"10.jpg", nil];
    // Do any additional setup after loading the view.
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return attachPhoto.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"Cell";
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier: identifier forIndexPath:indexPath];
    
    UIImageView *attachImageView = (UIImageView *)[cell viewWithTag:100];
    
    attachImageView.image = [UIImage imageNamed:[attachPhoto objectAtIndex:indexPath.row]];
    
    cell.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[attachPhoto objectAtIndex:indexPath.row]]];
    
    return cell;
}

NSInteger selectedPhotoIndex;


-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    [collectionView selectItemAtIndexPath:indexPath animated:YES scrollPosition:UICollectionViewScrollPositionCenteredHorizontally];
    selectedPhotoIndex = indexPath.row;
    NSLog(@"%li", selectedPhotoIndex);
    [self performSegueWithIdentifier:@"fullAttachShow" sender:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"fullAttachShow"]){
        DetailShowViewController *detailViewController = segue.destinationViewController;
        detailViewController.fullImage = selectedPhotoIndex;
        NSLog(@"%li", (long)detailViewController.fullImage);
    }
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
