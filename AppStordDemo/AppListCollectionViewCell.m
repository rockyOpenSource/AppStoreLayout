//
//  AppListCollectionViewCell.m
//  AppStordDemo
//
//  Created by qishang on 16/3/23.
//  Copyright © 2016年 Rocky. All rights reserved.
//

#import "AppListCollectionViewCell.h"
#import "AppCollectionViewCell.h"
@implementation AppListCollectionViewCell

- (void)awakeFromNib {
  
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 10;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    AppCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"kAppCell" forIndexPath:indexPath];
    return cell;


}
@end
