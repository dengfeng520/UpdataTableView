//
//  ViewController.m
//  UpdataListViweDeme
//
//  Created by rp.wang on 16/5/3.
//  Copyright © 2016年 rp.wang. All rights reserved.
//

#import "ViewController.h"
#import "HomeTableViewCell.h"

#import "HomeModel.h"

#import "ViewModel.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableview;

@property (strong, nonatomic) NSArray *DataList;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //处理scrollView会莫名产生20的偏移问题
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    self.title = @"多选展开";
    
    self.DataList = [[ViewModel GetData]copy];
    [self.tableview reloadData];

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - tableview
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.DataList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    HomeTableViewCell *Cell = [tableView dequeueReusableCellWithIdentifier:@"HomeCell" forIndexPath:indexPath];
    
    [Cell SetHomeCellData:self.DataList[indexPath.row]];
    
    return Cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    HomeModel* HM = self.DataList[indexPath.row];
    if ([HM.isShow intValue] == 0) {
        HM.isShow = @"1";
    }
    else
    {
        HM.isShow = @"0";
    }
    //刷新点击的行
    NSIndexPath *myindexPath =[ NSIndexPath indexPathForRow:indexPath.row inSection:0];
    [self.tableview reloadRowsAtIndexPaths:[NSArray arrayWithObjects:myindexPath,nil] withRowAnimation:UITableViewRowAnimationNone];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    HomeModel* HModel = self.DataList[indexPath.row];
    if([HModel.isShow intValue] == 1)
    {
        return 81;
    }
    else
    {
        return 40;
    }

}

#pragma mark - 内存相关
-(NSArray *)DataList
{
    if(!_DataList)
    {
        _DataList = [NSArray array];
    }
    return _DataList;
}
@end
