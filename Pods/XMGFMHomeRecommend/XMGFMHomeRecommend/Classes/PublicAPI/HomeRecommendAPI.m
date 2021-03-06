//
//  HomeRecommendAPI.m
//  Pods
//
//  Created by 王顺子 on 16/10/30.
//
//

#import "HomeRecommendAPI.h"


@interface HomeRecommendAPI()



@end

@implementation HomeRecommendAPI

static HomeRecommendAPI *_shareInstance;
+ (instancetype)shareInstance {
    if (_shareInstance == nil) {
        _shareInstance = [[HomeRecommendAPI alloc] init];
        [_shareInstance registerNotification];
    }
    return _shareInstance;
}


- (void)registerNotification {

    // 监听本模块内部的行为动作
    // 1. 跳转到专辑详情界面
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(jumpToAlbumDetail:) name:@"HomeRecommendAPI_jumpToAbumDetail" object:nil];

    // 2. 跳转到播放器界面
     [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(presentPlayer:) name:@"HomeRecommendAPI_presentPlayer" object:nil];
}


- (void)jumpToAlbumDetail:(NSNotification *)notice {

    // 1. 获取通知传递过来的 当前导航控制器
    UINavigationController *currentNav = (UINavigationController *)notice.object[@"currentNav"];
    // 2. 获取通知传递过来的 专辑ID
    NSInteger albumID = [notice.object[@"albumID"] integerValue];

    // 3. 执行代码块
    if (self.jumpAlbumDetailBlock) {
        self.jumpAlbumDetailBlock(albumID, currentNav);
    }

}

- (void)presentPlayer:(NSNotification *)notice {

    // 1. 获取通知传递过来的, 声音ID
    NSInteger trackID = [notice.object[@"trackID"] integerValue];

    // 2. 执行代码块
    if (self.presentPlayerBlock) {
        self.presentPlayerBlock(trackID);
    }


}

+(void)load {
    [self shareInstance];
}

-(UIViewController *)recommendVC {

    Class cls = NSClassFromString(@"XMGRecommendTVC");
    return [[cls alloc] init];

}


@end
