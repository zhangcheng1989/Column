//
//  ViewController.m
//  Column
//
//  Created by fujin on 15/11/18.
//  Copyright © 2015年 fujin. All rights reserved.
//

#import "ViewController.h"
#import "ColumnViewController.h"
#import "Header.h"
@interface ViewController ()
- (IBAction)action:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"网易";
    [self configNavigationBar];
}
- (UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}
-(void)configNavigationBar{
    [self.navigationController.navigationBar setTranslucent:NO];
    [self.navigationController.navigationBar setBarTintColor:RGBA(214, 39, 48, 1)];
    [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                                     [UIColor whiteColor], NSForegroundColorAttributeName,
                                                                     [UIFont systemFontOfSize:18], NSFontAttributeName,
                                                                     nil]];
}
/**
 *  初始数据源 进行模拟操作
 *
 *  @param sender sender
 */
- (IBAction)action:(id)sender {
    
    NSArray *selectedArray = [[NSUserDefaults standardUserDefaults]objectForKey:@"selectedArray"];
    if (selectedArray.count==0) {
        selectedArray = @[@"头条",@"热点",@"体育",@"本地",@"财经",@"科技",@"图片",@"跟帖",@"直播",@"时尚",@"汽车",@"轻松一刻",@"汽车",@"端子",@"军事",@"房产",@"历史",@"家居",@"原创",@"游戏"];
    }
    
    NSArray *optionalArray = @[@"NBA",@"画报",@"跑步",@"值得买",@"酒香",@"LOL",@"社会",@"暴雪游戏帖",@"云课堂",@"旅游",@"读书",@"葡萄酒",@"你照吗",@"移动互联",@"情感",@"博客",@"论坛",@"数码",@"国际足球",@"彩票",@"股票",@"哒哒",@"漫画"];
    
    ColumnViewController *vc = [[ColumnViewController alloc] init];
    vc.title = self.title;
    vc.view.frame = self.view.bounds;
    [vc.selectedArray addObjectsFromArray:selectedArray];
    [vc.optionalArray addObjectsFromArray:optionalArray];
    [self.navigationController pushViewController:vc animated:YES];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}
@end
