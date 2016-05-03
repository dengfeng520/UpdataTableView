//
//  ViewModel.m
//  UpdataListViweDeme
//
//  Created by rp.wang on 16/5/3.
//  Copyright © 2016年 rp.wang. All rights reserved.
//

#import "ViewModel.h"
#import "HomeModel.h"

#import "MJExtension.h"

@implementation ViewModel


+ (NSMutableArray *)GetData
{
    NSString *path =[[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"menu.json"];
    NSString *responseString =[NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:NULL];
    
    NSData* jsonData = [responseString dataUsingEncoding:NSUTF8StringEncoding];
    
    NSDictionary *jsonDic = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableLeaves error:nil];
    
    NSDictionary* df = [jsonDic objectForKey:@"result"] ;
    
    NSMutableArray *GetdataList = [NSMutableArray array];
    
    NSArray *Data = [HomeModel mj_objectArrayWithKeyValuesArray:df[@"dataList"]];
    for (HomeModel* bmsg in Data) {
        HomeModel* bm =[[HomeModel alloc] init];
        bmsg.isShow = @"0";
        bm = bmsg;
        [GetdataList addObject:bm];
    }
    return GetdataList;
}

@end
