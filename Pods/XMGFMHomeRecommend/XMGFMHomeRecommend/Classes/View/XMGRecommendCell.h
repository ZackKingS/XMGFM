//
//  XMGRecommendCell.h
//  喜马拉雅FM
//
//  Created by 王顺子 on 16/8/2.
//  Copyright © 2016年 小码哥. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XMGGroupModel.h"

@interface XMGRecommendCell : UITableViewCell

@property (nonatomic, strong) XMGGroupModel *groupM;

+ (instancetype)cellWithTableView: (UITableView *)tableView;

@end
