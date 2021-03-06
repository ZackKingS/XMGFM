//
//  XMGFMHomeFrameVC.h
//  Pods
//
//  Created by 王顺子 on 16/10/21.
//
//

#import <UIKit/UIKit.h>


@interface XMGFMHomeFrameVC : UIViewController


/// 选项卡选中的索引
@property (nonatomic, assign) NSInteger segSelectIndex;
/// segBar的位置
@property (nonatomic, assign) CGRect segBarFrame;

/// 是否让setBar显示更多
@property (nonatomic, assign) BOOL isShowMore;



/// 内容视图的位置大小
@property (nonatomic, assign) CGRect contentScrollViewFrame;

/// 设置选项卡模型和子控制器
- (void)setUpWithSegModels:(NSArray *)segMs andChildVCs:(NSArray *)subVCs;



@end
