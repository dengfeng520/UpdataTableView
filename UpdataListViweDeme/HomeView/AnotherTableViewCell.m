//
//  AnotherTableViewCell.m
//  UpdataListViweDeme
//
//  Created by rp.wang on 16/5/3.
//  Copyright © 2016年 rp.wang. All rights reserved.
//

#import "AnotherTableViewCell.h"

@implementation AnotherTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void) SetAnotherCellData :(HomeModel *)HModel
{
    self.HeaderTxt.text = HModel.name;
}

@end
