//
//  HomeModel.h
//  UpdataListViweDeme
//
//  Created by rp.wang on 16/5/3.
//  Copyright © 2016年 rp.wang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HomeModel : NSObject

@property (copy, nonatomic) NSString *name;
/**
 *  监听是否展开
 */
@property(strong,nonatomic)NSString* isShow;

@end
