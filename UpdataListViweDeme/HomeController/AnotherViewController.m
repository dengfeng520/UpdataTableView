//
//  AnotherViewController.m
//  UpdataListViweDeme
//
//  Created by rp.wang on 16/5/3.
//  Copyright © 2016年 rp.wang. All rights reserved.
//

#import "AnotherViewController.h"

#import "AnotherTableViewCell.h"

#import "ViewModel.h"


@interface AnotherViewController ()

@property (weak, nonatomic) IBOutlet UITableView *ui_tableView;

@property (strong, nonatomic) NSArray * m_array;

@property (strong, nonatomic) NSString * name;
/**
 *  监听点击的是哪一行，默认为-1
 */
@property (assign, nonatomic) int CellRow;

@end

@implementation AnotherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"单选展开";
    
    //处理scrollView会莫名产生20的偏移问题
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    self.CellRow = -1;
    //获取数据后刷新tableview
    self.m_array = [[ViewModel GetData]copy];
    [self.ui_tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.m_array.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    float height=0;

    if (indexPath.row == self.CellRow)
    {
        height = 81;
    }
    else
    {
        height = 40;
    }

    return height;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    AnotherTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AnotherCell" forIndexPath:indexPath];
    
    [cell SetAnotherCellData:self.m_array[indexPath.row]];
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0.1f;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 0.1f;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if(indexPath.row == self.CellRow)
    {
        self.CellRow = -1;
    }else
    {
        self.CellRow = indexPath.row;
    }
    [tableView beginUpdates];
    [tableView endUpdates];

}

@end
