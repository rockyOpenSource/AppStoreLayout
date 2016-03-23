//
//  MainCollectionViewController.m
//  AppStordDemo
//
//  Created by qishang on 16/3/23.
//  Copyright © 2016年 Rocky. All rights reserved.
//

#import "MainCollectionViewController.h"
#import "AppListCollectionViewCell.h"
#import "AppCollectionViewCell.h"

@interface MainCollectionViewController ()
@property (nonatomic, strong) NSMutableDictionary *contentOffsetArray;
@end

@implementation MainCollectionViewController

static NSString * const kAppListCell = @"kAppListCell";

- (NSMutableDictionary *)contentOffsetArray {
    if (!_contentOffsetArray) {
        _contentOffsetArray = [NSMutableDictionary dictionary];
    }
    return _contentOffsetArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 20;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    AppListCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kAppListCell forIndexPath:indexPath];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView willDisplayCell:(UICollectionViewCell *)cell forItemAtIndexPath:(NSIndexPath *)indexPath {

//    AppListCollectionViewCell *displayCell = (AppListCollectionViewCell *)cell;
    
    CGFloat offSetX = [self.contentOffsetArray[[NSString stringWithFormat:@"%ld", indexPath.row]] floatValue];
    if (offSetX) {
        CGPoint offSet = displayCell.appCollectionView.contentOffset;
        offSet.x = offSetX;
        displayCell.appCollectionView.contentOffset = offSet;

    } else {
        CGPoint offSet = displayCell.appCollectionView.contentOffset;
        offSet.x = 0;
        displayCell.appCollectionView.contentOffset = offSet;

    }
    
}

- (void)collectionView:(UICollectionView *)collectionView didEndDisplayingCell:(UICollectionViewCell *)cell forItemAtIndexPath:(NSIndexPath *)indexPath {
    AppListCollectionViewCell *endDisplayCell = (AppListCollectionViewCell *)cell;
    [self.contentOffsetArray setValue:@(endDisplayCell.appCollectionView.contentOffset.x) forKey:[NSString stringWithFormat:@"%ld", indexPath.row]];
}

@end
