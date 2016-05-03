//
//  AnotherTableViewCell.h
//  UpdataListViweDeme
//
//  Created by rp.wang on 16/5/3.
//  Copyright © 2016年 rp.wang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeModel.h"

@interface AnotherTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *HeaderTxt;
/**
 *  接收数据
 */
-(void) SetAnotherCellData :(HomeModel *)HModel;
@end
