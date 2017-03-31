//
//  ViewController.m
//  InstaKilo W3D3
//
//  Created by Elham on 3/30/17.
//  Copyright © 2017 Elham. All rights reserved.
//

#import "ViewController.h"
#import "CustomCell.h"
#import "HeaderCollectionReusableView.h"
#import "Footer.h"
#import "Photo.h"

@interface ViewController ()<UICollectionViewDataSource, UICollectionViewDelegate>

//    NSArray *lauraImageArray;
//    NSArray *neelaImageArray;
//    NSArray *tashaImageArray;
//    NSArray *allImageArray;

@property (nonatomic) UICollectionViewFlowLayout *heaterAndFooterSize;

@property (nonatomic) NSArray *orangeShapes;
@property (nonatomic) NSArray *blueShapes;
@property (nonatomic) NSArray *pinkShapes;

@property (nonatomic) NSArray *squares;
@property (nonatomic) NSArray *circles;
@property (nonatomic) NSArray *triangles;

@property (nonatomic) NSMutableArray *dataSource;

@property (nonatomic) Photo *orangeSquare;
@property (nonatomic) Photo *orangeCircle;
@property (nonatomic) Photo *orangeTriangle;
@property (nonatomic) Photo *blueSquare;
@property (nonatomic) Photo *blueCircle;
@property (nonatomic) Photo *blueTriangle;
@property (nonatomic) Photo *pinkSquare;
@property (nonatomic) Photo *pinkCircle;
@property (nonatomic) Photo *pinkTriangle;


@property (nonatomic) UICollectionViewFlowLayout *allShapesLayout;
@property (nonatomic) UICollectionViewFlowLayout *shapesLayout;
@property (nonatomic) UICollectionViewFlowLayout *colorsLayout;






@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    lauraImageArray = [[NSArray alloc] initWithObjects:@"LauraBaby1", @"LauraBaby2",@"LauraBaby3",@"LauraBaby4",@"LauraBaby5",nil];
//    neelaImageArray = [[NSArray alloc] initWithObjects:@"Neela1", @"Neela2", @"Neela3", @"Neela4", nil];
//    tashaImageArray = [[NSArray alloc] initWithObjects:@"Tasha1", @"Tasha2",@"Tasha3",@"Tasha4",@"Tasha5", nil];
//    allImageArray = [NSArray arrayWithObjects:lauraImageArray, neelaImageArray, tashaImageArray, nil];
//    
//    
//
//    self.heaterAndFooterSize = [UICollectionViewFlowLayout new];
//    self.heaterAndFooterSize.headerReferenceSize = CGSizeMake(self.myCollectionView.frame.size.width, 50);
//    self.heaterAndFooterSize.footerReferenceSize = CGSizeMake(self.myCollectionView.frame.size.height, 50);
//
    
    
    
    
    self.orangeSquare = [[Photo alloc] initWithName:@"orange square" shape:Square andColor:Orange];
    self.orangeCircle = [[Photo alloc] initWithName:@"orange circle" shape:Circle andColor:Orange];
    self.orangeTriangle = [[Photo alloc] initWithName:@"orange triangle" shape:Triangle andColor:Orange];
    
    self.blueSquare = [[Photo alloc] initWithName:@"blue square" shape:Square andColor:Blue];
    self.blueCircle = [[Photo alloc] initWithName:@"blue circle" shape:Circle andColor:Blue];
    self.blueTriangle = [[Photo alloc] initWithName:@"blue triangle" shape:Triangle andColor:Blue];
    
    self.pinkSquare = [[Photo alloc] initWithName:@"pink square" shape:Square andColor:Pink];
    self.pinkCircle = [[Photo alloc] initWithName:@"pink circle" shape:Circle andColor:Pink];
    self.pinkTriangle = [[Photo alloc] initWithName:@"pink triangle" shape:Triangle andColor:Pink];
    
    // arrays arranged by color
    self.orangeShapes = [NSArray arrayWithObjects:self.orangeSquare, self.orangeCircle, self.orangeTriangle, nil];
    self.blueShapes = [NSArray arrayWithObjects:self.blueSquare, self.blueCircle, self.blueTriangle, nil];
    self.pinkShapes = [NSArray arrayWithObjects:self.pinkSquare, self.pinkCircle, self.pinkTriangle, nil];
    
    // arrays arranged by shape
    self.squares = [NSArray arrayWithObjects:self.orangeSquare, self.blueSquare, self.pinkSquare ,nil];
    self.circles = [NSArray arrayWithObjects:self.orangeCircle, self.blueCircle, self.pinkCircle, nil];
    self.triangles = [NSArray arrayWithObjects:self.orangeTriangle, self.blueTriangle, self.pinkTriangle, nil];
    
    
    
    self.dataSource = [NSMutableArray new];

    
    [self determineCollectionViewLayout];
    
    
}

-(void)determineCollectionViewLayout
{
    // do your collectionView flow layout configuration here
    self.allShapesLayout = [UICollectionViewFlowLayout new];
    // blah blah
    
    self.shapesLayout = [UICollectionViewFlowLayout new];
    // blah blah
    
    
    self.colorsLayout = [UICollectionViewFlowLayout new];
    // blah blah
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
   // return [allImageArray count];
    return 3;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    //return [[allImageArray objectAtIndex:section] count];
    return 3;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CustomCell *cell = [self.myCollectionView dequeueReusableCellWithReuseIdentifier:@"myCell" forIndexPath:indexPath];
    
    
//    UIImageView *allImageView = (UIImageView *)[cell viewWithTag:100];
//    allImageView.image = [UIImage imageNamed:[allImageArray[indexPath.section] objectAtIndex:indexPath.row]];
    
    
    
    
//    [[cell myImage] setImage:[UIImage imageNamed:[lauraImageArray objectAtIndex:indexPath.item]]];

    
    return cell;
  }

-(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
//    if ([kind isEqualToString:UICollectionElementKindSectionHeader])
//    {
//        HeaderCollectionReusableView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"header" forIndexPath:indexPath];
//        
//       // headerView.groupSegmentedControl.selectedSegmentIndex = indexPath.section;
//       
//        if (indexPath.section == 0)
//        {
//            headerView.headerLabel.text = [NSString stringWithFormat:@"Baby Laura"];
//            return headerView;
//        }else if (indexPath.section == 1)
//        {
//            headerView.headerLabel.text = [NSString stringWithFormat:@"Neela"];
//            return headerView;
//        }else
//        {
//            headerView.headerLabel.text = [NSString stringWithFormat:@"Tasha"];
//            return headerView;
//        }
// 
//    }
    
    
//    if ([kind isEqualToString:UICollectionElementKindSectionFooter])
//    {
//        Footer *footerview = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"footer" forIndexPath:indexPath];
//       
//        
//        if (indexPath.section == 0)
//        {
//            footerview.footerLabel.text = [NSString stringWithFormat:@"Baby Laura"];
//            return footerview;
//        }else if (indexPath.section == 1)
//        {
//            footerview.footerLabel.text = [NSString stringWithFormat:@"Neela"];
//            return footerview;
//        }else
//        {
//            footerview.footerLabel.text = [NSString stringWithFormat:@"Tasha"];
//            return footerview;
//        }
    
        
//        footerview.footerLabel.text = [NSString stringWithFormat:@"Love Her"];
//        return footerview;
//    }
    
    return 0;
}



- (IBAction)SegmentValueChanged:(UISegmentedControl*)sender
{
    [self.dataSource removeAllObjects];
    [self.myCollectionView.collectionViewLayout invalidateLayout];
    
    switch (sender.selectedSegmentIndex) {
        case 0:
            // show pictures as a grid
            [self.dataSource addObject:self.orangeSquare];// add the rest of the photos
            
            [self.myCollectionView setCollectionViewLayout:self.allShapesLayout animated:YES];
            break;
            
            // show picture according to child group
        case 1:
            
            [self.dataSource addObject:self.orangeShapes];
            [self.dataSource addObject:self.pinkShapes];
            [self.dataSource addObject:self.blueShapes];
            
            [self.myCollectionView setCollectionViewLayout:self.colorsLayout animated:YES];
            break;
            
            // show pictures accroding to age group
        case 2:
            [self.dataSource addObject:self.squares];
            [self.dataSource addObject:self.circles];
            [self.dataSource addObject:self.triangles];
            
            [self.myCollectionView setCollectionViewLayout:self.shapesLayout animated:YES];
            break;
    }

    [self.myCollectionView reloadData];
}
@end
