//
//  ViewController.h
//  InstaKilo W3D3
// http://www.appcoda.com/supplementary-view-uicollectionview-flow-layout/ help with the grouping the images
//  Created by Elham on 3/30/17.
//  Copyright © 2017 Elham. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController 

@property (strong, nonatomic) IBOutlet UICollectionView *myCollectionView;
@property (strong, nonatomic) IBOutlet UISegmentedControl *SegmentedControl;
//- (IBAction)SegmentValueChanged:(id)sender;

@end

