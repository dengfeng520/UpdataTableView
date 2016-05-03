//
//  MainTableViewController.m
//  UpdataListViweDeme
//
//  Created by rp.wang on 16/5/3.
//  Copyright © 2016年 rp.wang. All rights reserved.
//

#import "MainTableViewController.h"

@interface MainTableViewController ()<UITableViewDelegate,UITableViewDelegate>



@end

@implementation MainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"首页";
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

    return [self MainList].count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static  NSString *cellIdentifier1 = @"MainCell";
    UITableViewCell *cell = nil;
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier1];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@",[[self MainList] objectAtIndex:indexPath.row]];
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0.1f;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 12.f;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    switch (indexPath.row) {
        case 0:
        {
          [self performSegueWithIdentifier:@"AnotherVC" sender:self];
        }
            break;
        case 1:
        {
            [self performSegueWithIdentifier:@"HomeVC" sender:self];
        }
            break;
               default:
            break;
    }
    
}

-(NSArray *) MainList
{
    NSArray *MainList = @[@"单选展开",@"多选展开"];
    
    return MainList;
}

@end
