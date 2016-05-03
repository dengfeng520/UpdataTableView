//
//  RootNavViewController.m
//  UpdataListViweDeme
//
//  Created by rp.wang on 16/5/3.
//  Copyright © 2016年 rp.wang. All rights reserved.
//

#import "RootNavViewController.h"

@interface RootNavViewController ()

@end

@implementation RootNavViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationController.navigationBar.backgroundColor = [UIColor whiteColor];
    NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor],NSForegroundColorAttributeName, nil];
    self.navigationBar.titleTextAttributes = dict;
    self.navigationBar.translucent = YES;
    [self.navigationBar setTintColor:[UIColor whiteColor]];
    self.navigationBar.barTintColor = [UIColor colorWithRed:54.0f/255.0f green:158.0f/255.0f blue:222.0f/255.0f alpha:1];
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
