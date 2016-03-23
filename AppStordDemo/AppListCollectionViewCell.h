//
//  AppListCollectionViewCell.h
//  AppStordDemo
//
//  Created by qishang on 16/3/23.
//  Copyright © 2016年 Rocky. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppListCollectionViewCell : UICollectionViewCell <UICollectionViewDelegate, UICollectionViewDataSource>
@property (strong, nonatomic) IBOutlet UICollectionView *appCollectionView;

@end
